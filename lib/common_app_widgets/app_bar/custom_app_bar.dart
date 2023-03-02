import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool enableBackButton;
  final double height;
  const CustomAppBar({
    super.key,
    this.enableBackButton = false,
    this.height = 80,
  });

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: enableBackButton
          ? Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff307A59),
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            )
          : null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/app_icon.png",
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10),
          const Text(
            "المكتشف",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Changa",
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
