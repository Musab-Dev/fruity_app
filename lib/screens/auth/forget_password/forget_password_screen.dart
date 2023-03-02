import 'package:flutter/material.dart';

import '../../../common_app_widgets/app_bar/custom_app_bar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = '/forget-password';
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        enableBackButton: true,
      ),
      body: Center(
        child: Text("Forget Password Page Content"),
      ),
    );
  }
}
