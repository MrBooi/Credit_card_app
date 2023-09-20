import 'package:card_app/core/error/failure.dart';
import 'package:card_app/core/shared/app_button.dart';
import 'package:card_app/core/snack_bar_helper.dart';
import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:card_app/features/add_card/presentation/cubit/payment_card_cubit.dart';
import 'package:card_app/features/add_card/presentation/payment_card_list/payment_card_list_page.dart';
import 'package:card_app/features/add_card/presentation/widgets/card_form/payment_card_form.dart';
import 'package:card_app/features/add_card/presentation/widgets/payment_cad/payment_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:card_app/locator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_scan_tools/flutter_scan_tools.dart';

class AddCarPage extends StatefulWidget {
  const AddCarPage({super.key});

  @override
  State<AddCarPage> createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submit() {
    FocusScope.of(context).requestFocus(FocusNode());
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      final state = sl<PaymentCardCubit>().state;
      sl<PaymentCardCubit>().addCard(state.cardModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    final card = context.select<PaymentCardCubit, CardModel>(
      (val) => val.state.cardModel,
    );
    return BlocListener<PaymentCardCubit, PaymentCardState>(
      listener: (context, state) {
        if (state.isSaving) {
          // TODO Loading status
        } else {
          state.savingOption.fold(
            () => null,
            (a) => a.fold(
              (failure) {
                if (failure is CardAlreadyExistsFailure) {
                  SnackBarHelper().showSnackBar(
                    context: context,
                    content: 'Card already exist, please add another one.',
                  );
                }
                if (failure is ServerFailure) {
                  SnackBarHelper().showSnackBar(
                    context: context,
                    content:
                        "Opp's! something went wrong trying to save your card.",
                  );
                }
              },
              (r) {
                // reset state and show success snackbar
                SnackBarHelper().showSnackBar(
                  context: context,
                  content: 'your Card have been Successfully added.',
                );
                sl<PaymentCardCubit>().updatedResetCardForm();
                formKey.currentState?.reset();
              },
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add New Card'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PaymentCardListPage(),
                  ),
                );
              },
              icon: const Icon(Icons.payment),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,
                ),
                child: PaymentCardWidget(
                  cardModel: card,
                ),
              ),
              PaymentCardForm(
                form: formKey,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppOutlineIconButton(
                    icon: Icons.save,
                    buttonText: 'Save Card',
                    onPressed: submit,
                  ),
                  AppOutlineIconButton(
                    icon: Icons.credit_card,
                    buttonText: 'Scan Card',
                    onPressed: _startScan,
                  ),
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  void _startScan() async {
    await Permission.camera.request();
    // ignore: use_build_context_synchronously
    final scanResult = await FlutterScanTools.scanCard(
      context,
      options: const CardScanOptions(
        requireHolder: true,
        requireExpiry: true,
      ),
    );

    if (scanResult != null) {
      sl<PaymentCardCubit>().updatedCardNumber(scanResult.cardNumber.number);
      sl<PaymentCardCubit>().updatedCardExpiryDate(scanResult.expiry ?? '');
    }
  }
}
