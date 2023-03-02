import 'dart:io';

import 'package:flutter/material.dart';

import '../../common_app_widgets/bottom_sheet/discover_bottom_sheet.dart';
import '../../constants.dart';

class CameraScreen extends StatelessWidget {
  final File? image;
  const CameraScreen({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const DiscoverBottomSheet();
                },
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.grey,
              ),
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Center(
                      child: Text('No Image Selected'),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
