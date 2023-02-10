import 'package:flutter/material.dart';
import 'package:taxconnect/const/color.dart';

class TextFieldWidget extends StatelessWidget {
  final bool isObscure;
  final Icon icon;
  final String hintText;
  final Widget? suffix;

  const TextFieldWidget({
    super.key,
    required this.isObscure,
    required this.icon,
    required this.hintText,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          fillColor: bgcolor,
          filled: true,
          hintText: hintText,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gapPadding: 10,
          ),
          suffix: suffix,
          errorText: "Error",
        ),
      ),
    );
  }
}
