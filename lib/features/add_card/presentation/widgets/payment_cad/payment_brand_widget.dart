import 'package:flutter/material.dart';

class PaymentBrandWidget extends StatelessWidget {
  final String brand;
  const PaymentBrandWidget({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final path = ["visa", "master"].contains(brand.trim().toLowerCase())
        ? "assets/images/$brand.png"
        : "";
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child:
          // path.isNotEmpty
          //     ? Image.asset(
          //         path,
          //         width: 40.0,
          //         height: 30.0,
          //       )
          Text(
        brand.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
