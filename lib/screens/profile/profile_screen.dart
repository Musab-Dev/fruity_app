import 'package:flutter/material.dart';
import 'package:fruity_app/data/history_data.dart';
import 'package:fruity_app/screens/profile/widgets/history_list_tile.dart';

import './widgets/personal_card.dart';
import '../../constants.dart';
import '../../screens/profile/widgets/statistics_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PersonalCard(
            name: 'مصعب إياد',
          ),
          const SizedBox(
            height: kMargin,
          ),
          Row(
            children: const [
              StatisticsCard(
                imageURL: 'assets/images/good_fruite.png',
                title: 'الصالحة',
                color: Colors.green,
                number: 76,
              ),
              SizedBox(
                width: 10,
              ),
              StatisticsCard(
                imageURL: 'assets/images/bad_fruite.png',
                title: 'الفاسدة',
                color: Colors.red,
                number: 15,
              ),
            ],
          ),
          const SizedBox(
            height: kMargin,
          ),
          const Text(
            'السجل',
            style: kPrimaryTextStyle,
          ),
          const Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return HistoryListTile(
                  imageURL: history[index].imageURL,
                  result: history[index].result,
                  date: history[index].date,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
