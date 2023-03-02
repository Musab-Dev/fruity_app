import 'package:flutter/material.dart';

import '../../../constants.dart';

class ModalButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  const ModalButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(kBorderRadius / 2),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
            ),
            const SizedBox(
              width: kMargin,
            ),
            Text(
              text,
              style: kPrimaryTextStyle.copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
