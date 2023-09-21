import 'package:card_app/core/input_mask.dart';
import 'package:card_app/core/shared/app_text_form_field.dart';
import 'package:card_app/core/utils/validators.dart';
import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:card_app/features/add_card/presentation/cubit/payment_card_cubit.dart';
import 'package:card_app/locator.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCardForm extends StatefulWidget {
  final GlobalKey<FormState> form;
  final CardModel model;
  const PaymentCardForm({
    super.key,
    required this.form,
    required this.model,
  });

  @override
  State<PaymentCardForm> createState() => _PaymentCardFormState();
}

class _PaymentCardFormState extends State<PaymentCardForm> {
  final _cardController = TextEditingController();
  final _cardExpiryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _cardController.text = widget.model.number;
    _cardExpiryController.text =
        "${widget.model.expiryMonth}/${widget.model.expiryYear}";

    return Form(
      key: widget.form,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          AppTextFormFieldWidget(
            hintText: 'Country Issuer',
            helperText: 'Country Issuer',
            validator: CountryIssuerValidator.validate,
            onChanged: (val) {
              sl<PaymentCardCubit>().updatedCountryIssuer(
                val,
              );
            },
          ),
          const SizedBox(height: 5.0),
          AppTextFormFieldWidget(
            hintText: 'Name on card',
            helperText: 'Cardholder name',
            validator: CardNameValidator.validate,
            onChanged: (val) {
              sl<PaymentCardCubit>().updatedCardHolder(
                val,
              );
            },
          ),
          const SizedBox(height: 5.0),
          AppTextFormFieldWidget(
            helperText: "Card Number",
            hintText: "0000 0000 0000 0000",
            keyboardType: TextInputType.number,
            validator: CardNumberValidator.validate,
            controller: _cardController,
            inputFormatters: [
              MaskedTextInputFormatter(
                mask: 'xxxx xxxx xxxx xxxx',
                separator: ' ',
              ),
            ],
            onChanged: (val) {
              sl<PaymentCardCubit>().updatedCardNumber(
                val,
              );
            },
          ),
          const SizedBox(height: 5.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AppTextFormFieldWidget(
                  helperText: "Expiry",
                  hintText: "01/20",
                  controller: _cardExpiryController,
                  validator: CardExpiryValidator.validate,
                  inputFormatters: [
                    MaskedTextInputFormatter(
                      mask: 'xx/xx',
                      separator: '/',
                    ),
                  ],
                  onChanged: (val) {
                    sl<PaymentCardCubit>().updatedCardExpiryDate(val);
                  },
                ),
              ),
              Expanded(
                child: AppTextFormFieldWidget(
                  helperText: "CVV",
                  hintText: "123",
                  validator: CardCvcValidator.validate,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    MaskedTextInputFormatter(
                      mask: 'xxx',
                      separator: '',
                    ),
                  ],
                  onChanged: (val) {
                    sl<PaymentCardCubit>().updatedCardCVV(
                      val,
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
