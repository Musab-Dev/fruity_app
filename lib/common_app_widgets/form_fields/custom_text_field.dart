import 'package:flutter/material.dart';
import 'package:fruity_app/constants.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController fieldController;
  final String labelText;
  final String? hintText;
  final bool isObscureText;
  final Widget? suffix;
  final TextDirection? textDirection;

  const CustomTextField({
    super.key,
    required this.fieldController,
    required this.labelText,
    this.hintText,
    this.isObscureText = false,
    this.suffix,
    this.textDirection,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var isObscureTextShown = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObscureText && !isObscureTextShown,
      controller: widget.fieldController,
      style: const TextStyle(
        fontFamily: 'Changa',
        fontWeight: FontWeight.normal,
      ),
      textDirection: widget.textDirection,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: kPrimaryTextStyle.copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 2),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        suffix: widget.isObscureText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureTextShown = !isObscureTextShown;
                  });
                },
                child: isObscureTextShown
                    ? const Icon(
                        Icons.visibility_off,
                        color: kPrimaryColor,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: kPrimaryColor,
                      ),
              )
            : widget.suffix,
      ),
    );
  }
}
