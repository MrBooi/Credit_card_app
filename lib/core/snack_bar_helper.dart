import 'package:flutter/material.dart';

class SnackBarHelper {
  void showSnackBar({
    required context,
    required String content,
  }) {
    final snackBar = SnackBar(
      content: Text(content),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
