import 'package:flutter/material.dart';

import '../../constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            kPrimaryColor,
          ),
        ),
        child: Text(
          text,
          style: kSecondaryTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
