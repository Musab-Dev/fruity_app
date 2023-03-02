import 'package:flutter/material.dart';

import '../../common_app_widgets/buttons/primary_button.dart';
import '../../common_app_widgets/buttons/secondary_button.dart';
import '../../constants.dart';
import '../auth/login/login_screen.dart';
import '../auth/signup/sign_up_screen.dart';
import '../../common_app_widgets/app_bar/custom_app_bar.dart';
import './widgets/landing_slider.dart';

class LandingScreen extends StatelessWidget {
  static const String routeName = "/landing";
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.55,
              width: double.infinity,
              child: const LandingSlider(),
            ),
            PrimaryButton(
              text: 'تسجيل الدخول',
              onPressed: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            const SizedBox(
              height: kMargin,
            ),
            SecondaryButton(
              text: 'إنشاء حساب جديد',
              onPressed: () {
                Navigator.of(context).pushNamed(SignUpScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
