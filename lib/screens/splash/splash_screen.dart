import 'dart:async';

import 'package:flutter/material.dart';

import '../landing/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1, milliseconds: 500), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(48, 122, 89, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(207, 255, 255, 255),
              radius: size.width * 0.40,
              child: Center(
                child: Image.asset(
                  "assets/images/app_icon.png",
                  width: size.width * 0.60,
                  height: size.width * 0.60,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Text(
              "المكتشف",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Changa",
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
