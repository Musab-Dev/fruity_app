import 'package:flutter/material.dart';
import 'package:fruity_app/screens/profile/update_profile_screen.dart';

import '../../layout_screen.dart';
import '../../../constants.dart';

class PersonalCard extends StatelessWidget {
  final String name;
  const PersonalCard({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.10,
      decoration: BoxDecoration(
        color: const Color(0xffACCBBD),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'أهلاً بك $name',
              style: kPrimaryTextStyle,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  LayoutScreen.routeName,
                  (route) => false,
                  arguments: {
                    'body': const UpdateProfileScreen(),
                    'enableBackButton': false,
                    'selectedTabIndex': 2,
                  },
                );
              },
              child: const Icon(
                Icons.settings,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
