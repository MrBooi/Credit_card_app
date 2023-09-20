import 'package:flutter/material.dart';

class PaymentCardNumberWidget extends StatelessWidget {
  final String cardNumber;
  final String cvv;
  const PaymentCardNumberWidget(
      {super.key, required this.cardNumber, required this.cvv});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            spacing: 15.0,
            children: cardNumber.trim().split(" ").map((part) {
              return Text(
                part,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0),
              );
            }).toList(),
          ),
          if (cvv.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 30.0,
              // height: 18.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.white),
              child: Text(
                cvv,
                style: const TextStyle(color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
        ],
      ),
    );
  }
}
