import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/slide.dart';

class LandingSlide extends StatelessWidget {
  final Slide slide;

  const LandingSlide({
    super.key,
    required this.slide,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: kSecondaryColor,
          radius: size.width / 3,
          backgroundImage: AssetImage(slide.imageURL),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          slide.mainText,
          textAlign: TextAlign.center,
          style: kPrimaryTextStyle,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          slide.secondaryText,
          textAlign: TextAlign.center,
          style: kSecondaryTextStyle.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
