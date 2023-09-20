import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:flutter/material.dart';

class PaymentCardLowerWidget extends StatelessWidget {
  final CardModel cardModel;
  const PaymentCardLowerWidget({super.key, required this.cardModel});

  String padIt(String v) {
    if (v.length < 2) {
      return v.padLeft(2, "0");
    }

    return v.substring(v.length - 2);
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(color: Colors.white, fontWeight: FontWeight.w400);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              cardModel.holder,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.0,
            children: <Widget>[
              const Text("VALID\nTILL",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  )),
              Row(
                children: <Widget>[
                  Text(
                    padIt(cardModel.expiryMonth),
                    style: style,
                  ),
                  const Text(
                    "/",
                    style: style,
                  ),
                  Text(
                    padIt(cardModel.expiryYear),
                    style: style,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
