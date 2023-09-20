import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:card_app/features/add_card/presentation/widgets/payment_cad/payment_brand_widget.dart';
import 'package:card_app/features/add_card/presentation/widgets/payment_cad/payment_card_lower_widget.dart';
import 'package:card_app/features/add_card/presentation/widgets/payment_cad/payment_card_number_widget.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  final CardModel cardModel;
  const PaymentCardWidget({
    super.key,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(20),
        color: cardColor(CardModel.cardBrand(cardModel.number)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PaymentBrandWidget(
              brand: CardModel.cardBrand(cardModel.number),
            ),
            Expanded(
              child: PaymentCardNumberWidget(
                cardNumber: cardModel.number,
                cvv: cardModel.cvv,
              ),
            ),
            PaymentCardLowerWidget(cardModel: cardModel)
          ],
        ),
      ),
    );
  }

  Color cardColor(String brand) {
    switch (brand) {
      case 'VISA':
        return Colors.black;
      case 'MASTER':
        return Colors.grey;
      case 'AMERICAN EXPRESS':
        return Colors.blue;
      case 'DISCOVER':
        return Colors.deepPurpleAccent;
      default:
        return const Color(0xFFE92653);
    }
  }
}
