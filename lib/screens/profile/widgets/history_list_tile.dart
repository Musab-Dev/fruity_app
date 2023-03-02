import 'package:flutter/material.dart';

import '../../../constants.dart';

class HistoryListTile extends StatelessWidget {
  final String imageURL;
  final String result;
  final String date;

  const HistoryListTile({
    super.key,
    required this.imageURL,
    required this.result,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(
          imageURL,
        ),
      ),
      title: Text(
        result,
        style: kPrimaryTextStyle,
      ),
      subtitle: Text(
        date,
        style: kSecondaryTextStyle,
      ),
    );
  }
}
