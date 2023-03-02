import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants.dart';
import '../../screens/camera/camera_screen.dart';
import '../../screens/home/widgets/modal_button.dart';
import '../../screens/layout_screen.dart';
import '../buttons/primary_button.dart';

class DiscoverBottomSheet extends StatelessWidget {
  const DiscoverBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.all(kPadding),
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        children: [
          const SizedBox(height: kMargin),
          ModalButton(
            text: 'إرفاق صورة',
            icon: Icons.attach_file,
            onPressed: () async {
              await getImage(ImageSource.gallery).then((pickedImage) {
                if (pickedImage != null) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      LayoutScreen.routeName, (route) => false,
                      arguments: {
                        'body': CameraScreen(image: pickedImage),
                        'enableBackButton': false,
                        'selectedTabIndex': 1,
                      });
                } else {
                  Navigator.of(context).pop();
                }
              });
            },
          ),
          const SizedBox(height: kMargin),
          ModalButton(
            text: 'التقط صورة',
            icon: Icons.camera_alt,
            onPressed: () async {
              await getImage(ImageSource.camera).then((pickedImage) {
                if (pickedImage != null) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      LayoutScreen.routeName, (route) => false,
                      arguments: {
                        'body': CameraScreen(
                          image: pickedImage,
                        ),
                        'selectedTabIndex': 1,
                      });
                } else {
                  Navigator.of(context).pop();
                }
              });
            },
          ),
          const SizedBox(height: kMargin * 2),
          PrimaryButton(
            text: 'إلغاء',
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  static Future<File?> getImage(ImageSource source) async {
    XFile? xFile = await ImagePicker().pickImage(source: source);

    if (xFile?.path != null) {
      return File(xFile!.path);
    } else {
      return null;
    }
  }
}
