import 'package:flutter/material.dart';

class AppOutlineIconButton extends StatelessWidget {
  final IconData icon;
  final String buttonText;
  final void Function()? onPressed;
  final double? iconSize;
  final Color? iconColor;
  const AppOutlineIconButton({
    required this.icon,
    required this.buttonText,
    required this.onPressed,
    this.iconSize,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text(
        buttonText,
      ),
      onPressed: onPressed,
      style: TextButton.styleFrom(
        side: const BorderSide(
          color: Colors.blue,
          width: 1.0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
      ),
      icon: Icon(
        icon,
        size: iconSize,
        color: iconColor ?? Colors.blue,
      ),
    );
  }
}
