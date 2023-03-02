import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './screens/auth/forget_password/forget_password_screen.dart';
import './screens/auth/login/login_screen.dart';
import './screens/auth/signup/sign_up_screen.dart';
import './screens/landing/landing_screen.dart';
import './screens/splash/splash_screen.dart';
import './screens/home/home_screen.dart';
import 'screens/layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruity App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (_) => const LandingScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        SignUpScreen.routeName: (_) => SignUpScreen(),
        ForgetPasswordScreen.routeName: (_) => const ForgetPasswordScreen(),
        LayoutScreen.routeName: (_) => const LayoutScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar')],
      locale: const Locale('ar'),
    );
  }
}
