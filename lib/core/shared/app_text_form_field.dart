import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final FocusNode? node;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final Function(String)? onFiledSubmitted;
  final int? maxLines;
  final String helperText;
  final TextStyle? hintStyle;
  final VoidCallback? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixWidget;
  final AutovalidateMode? autovalidateMode;
  final Function(String)? onChanged;
  final bool? enabled;
  final int? maxLength;

  const AppTextFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.helperText,
    required this.onChanged,
    this.isPassword = false,
    this.controller,
    this.node,
    this.validator,
    this.keyboardType,
    this.inputAction,
    this.onFiledSubmitted,
    this.onEditingComplete,
    this.maxLines = 1,
    this.hintStyle,
    this.inputFormatters,
    this.suffixWidget,
    this.autovalidateMode,
    this.enabled = true,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Text(helperText,
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0)),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.circular(5.0),
                elevation: 2.0,
                color: Colors.white,
                child: const SizedBox(
                  height: 48.0,
                  width: double.infinity,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      focusNode: node,
                      autovalidateMode: autovalidateMode,
                      obscureText: isPassword,
                      textInputAction: inputAction,
                      keyboardType: keyboardType,
                      onFieldSubmitted: onFiledSubmitted,
                      validator: validator,
                      onEditingComplete: onEditingComplete,
                      maxLines: maxLines ?? 1,
                      inputFormatters: inputFormatters,
                      onChanged: onChanged,
                      enabled: enabled,
                      maxLength: maxLength,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w300)
                            .merge(hintStyle),
                        errorStyle:
                            const TextStyle(fontWeight: FontWeight.w300),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(
                              0.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.0),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.0),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
