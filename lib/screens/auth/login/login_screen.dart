import 'package:flutter/material.dart';

import '../../../common_app_widgets/buttons/primary_button.dart';
import '../../layout_screen.dart';
import '../signup/sign_up_screen.dart';
import '../forget_password/forget_password_screen.dart';
import '../../../common_app_widgets/form_fields/custom_text_field.dart';
import '../../../constants.dart';
import '../../../common_app_widgets/app_bar/custom_app_bar.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        enableBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'أهلًا بك يا صديقي',
                  style: kPrimaryTextStyle.copyWith(fontSize: 24),
                ),
                const Text(
                  'سجل دخولك',
                  style: kSecondaryTextStyle,
                ),
                const SizedBox(
                  height: kMargin,
                ),
                CustomTextField(
                  fieldController: _emailController,
                  labelText: 'بريدك الالكتروني',
                  hintText: 'your_email@example.com',
                ),
                const SizedBox(
                  height: kMargin,
                ),
                CustomTextField(
                  fieldController: _passwordController,
                  labelText: 'كلمة المرور',
                  isObscureText: true,
                ),
                const SizedBox(
                  height: kMargin,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ForgetPasswordScreen.routeName);
                  },
                  child: const Text(
                    'نسيت كلمة المرور؟',
                    style: kPrimaryTextStyle,
                  ),
                ),
                const SizedBox(
                  height: kMargin,
                ),
                PrimaryButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    // ToDo: Validate the input and check with database
                    // if login Successful
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        LayoutScreen.routeName,
                        (Route<dynamic> route) => false);
                  },
                ),
                const SizedBox(
                  height: kMargin,
                ),
                Row(
                  children: [
                    const Text(
                      'ليس لديك حساب؟ ',
                      style: kSecondaryTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignUpScreen.routeName);
                      },
                      child: const Text(
                        'إنشاء حساب جديد',
                        style: kPrimaryTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
