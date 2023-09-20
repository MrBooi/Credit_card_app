import 'package:card_app/features/add_card/presentation/cubit/payment_card_cubit.dart';
import 'package:card_app/features/add_card/presentation/widgets/payment_cad/payment_card_widget.dart';
import 'package:card_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCardListPage extends StatelessWidget {
  const PaymentCardListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List of saved cards')),
      body: BlocBuilder<PaymentCardCubit, PaymentCardState>(
        bloc: sl<PaymentCardCubit>()..getSavedCards(),
        builder: (context, state) {
          switch (state.status) {
            case Status.initial:
              return const SizedBox.shrink();
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.loaded:
              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                itemCount: state.data.length,
                itemBuilder: (context, idx) {
                  return PaymentCardWidget(cardModel: state.data[idx]);
                },
              );
            case Status.error:
            default:
              return const Center(
                child: Text('something went wrong'),
              );
          }
        },
      ),
    );
  }
}
