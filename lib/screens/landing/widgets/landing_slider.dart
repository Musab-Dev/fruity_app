import 'package:flutter/material.dart';
import 'package:fruity_app/constants.dart';

import '../../../model/slide.dart';
import './landing_slide.dart';

class LandingSlider extends StatefulWidget {
  const LandingSlider({super.key});

  @override
  State<LandingSlider> createState() => _LandingSliderState();
}

class _LandingSliderState extends State<LandingSlider> {
  int _currentSlideIndex = 0;
  final List<Slide> _slides = [
    Slide(
      imageURL: 'assets/images/slide1.jpeg',
      mainText: 'شريت فواكه من محل؟!',
      secondaryText: 'ودك تعرف هل هي طازجة أو تالفة ؟',
      isSelected: true,
    ),
    Slide(
      imageURL: 'assets/images/slide2.png',
      mainText: 'خل المكتشف يبين الحقيقة!',
      secondaryText: 'عن طريق الذكاءالاصطناعي',
      isSelected: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onVerticalDragEnd: (details) {
            setState(() {
              _slides[_currentSlideIndex].isSelected = false;
              if (_currentSlideIndex == _slides.length - 1) {
                _currentSlideIndex = 0;
              } else {
                _currentSlideIndex += 1;
              }
              _slides[_currentSlideIndex].isSelected = true;
            });
          },
          child: LandingSlide(
            slide: _slides[_currentSlideIndex],
          ),
        ),
        const SizedBox(
          height: kMargin,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _slides.map(
            (slide) {
              return slide.isSelected
                  ? Row(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: kPrimaryColor,
                        ),
                        SizedBox(
                          width: kMargin,
                        ),
                      ],
                    )
                  : Row(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: kSecondaryColor,
                        ),
                        SizedBox(
                          width: kMargin,
                        ),
                      ],
                    );
            },
          ).toList(),
        ),
      ],
    );
  }
}
