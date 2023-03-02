import 'package:flutter/material.dart';

import '../../common_app_widgets/bottom_sheet/discover_bottom_sheet.dart';
import '../../constants.dart';
import '../../common_app_widgets/buttons/primary_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: [
            const Text(
              'هل لديك فواكه تريد ان تعرف عن جودتها؟',
              style: kPrimaryTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Image.asset(
                'assets/images/home_screen_pic.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(
              text: 'اكتشف الآن',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const DiscoverBottomSheet();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
