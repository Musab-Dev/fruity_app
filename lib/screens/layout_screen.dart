import 'package:flutter/material.dart';
import 'package:fruity_app/screens/camera/camera_screen.dart';
import 'package:fruity_app/screens/home/home_screen.dart';
import 'package:fruity_app/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../common_app_widgets/app_bar/custom_app_bar.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = '/layout';
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> tabs = [
    const HomeScreen(),
    const CameraScreen(),
    const ProfileScreen(),
  ];

  var _selectedTapIndex = 0;
  bool _isFirstTime = true;
  @override
  Widget build(BuildContext context) {
    Map<String, Object>? args;
    Widget? body;
    bool? enableBackButton;

    if (_isFirstTime) {
      args =
          (ModalRoute.of(context)?.settings.arguments as Map<String, Object>?);
      body = args?['body'] as Widget?;
      enableBackButton = args?['enableBackButton'] as bool?;
    }

    if (body != null) {
      setState(() {
        _selectedTapIndex = args?['selectedTabIndex'] as int;
      });
    }
    return Scaffold(
      appBar: CustomAppBar(
        enableBackButton: enableBackButton ?? false,
      ),
      body: body ?? tabs[_selectedTapIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: kPrimaryTextStyle.copyWith(fontSize: 10),
        unselectedLabelStyle: kSecondaryTextStyle.copyWith(fontSize: 8),
        currentIndex: _selectedTapIndex,
        backgroundColor: kSecondaryColor,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'اكتشف',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الملف الشخصي',
          ),
        ],
        onTap: (index) {
          setState(() {
            _isFirstTime = false;
            _selectedTapIndex = index;
          });
        },
      ),
    );
  }
}
