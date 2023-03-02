import 'package:flutter/material.dart';
import 'package:fruity_app/common_app_widgets/form_fields/custom_date_field.dart';
import 'package:fruity_app/screens/auth/login/login_screen.dart';

import '../../../common_app_widgets/buttons/primary_button.dart';
import '../../../common_app_widgets/form_fields/custom_text_field.dart';
import '../../../constants.dart';
import '../../../common_app_widgets/app_bar/custom_app_bar.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';
  SignUpScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        enableBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'أول مرة تزورنا!',
                style: kPrimaryTextStyle.copyWith(fontSize: 24),
              ),
              const Text(
                'إنشاء حساب جديد',
                style: kSecondaryTextStyle,
              ),
              const SizedBox(
                height: kMargin,
              ),
              CustomTextField(
                fieldController: _usernameController,
                labelText: 'اسم المستخدم',
              ),
              const SizedBox(
                height: kMargin,
              ),
              CustomDateFeild(
                fieldController: _dateController,
                labelText: 'تاريخ الميلاد',
              ),
              const SizedBox(
                height: kMargin,
              ),
              CustomTextField(
                fieldController: _emailController,
                labelText: 'البريد الالكتروني',
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
              CustomTextField(
                fieldController: _confirmPasswordController,
                labelText: 'تأكيد كلمة المرور',
                isObscureText: true,
              ),
              const SizedBox(
                height: kMargin,
              ),
              PrimaryButton(
                text: 'إنشاء حساب',
                onPressed: () {},
              ),
              const SizedBox(
                height: kMargin,
              ),
              Row(
                children: [
                  const Text(
                    'لديك حساب مسجل؟ ',
                    style: kSecondaryTextStyle,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routeName),
                    child: const Text(
                      'تسجيل الدخول',
                      style: kPrimaryTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
