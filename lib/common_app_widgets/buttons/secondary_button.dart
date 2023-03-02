import 'package:flutter/material.dart';

import '../../constants.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kButtonHeight,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            kSecondaryColor,
          ),
        ),
        child: Text(
          text,
          style: kPrimaryTextStyle.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
