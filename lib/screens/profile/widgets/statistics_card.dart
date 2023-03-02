import 'package:flutter/material.dart';
import 'package:fruity_app/constants.dart';

class StatisticsCard extends StatelessWidget {
  final String imageURL;
  final String title;
  final Color color;
  final int number;

  const StatisticsCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.color,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width - (kPadding * 2)) / 2) - 10,
      height: 125,
      padding: const EdgeInsets.all(kPadding / 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: (((MediaQuery.of(context).size.width - (kPadding * 2)) /
                            2) -
                        10 -
                        (kPadding / 2)) /
                    3,
                height: 50,
                child: Image.asset(imageURL),
              ),
              Text(
                title,
                style: kPrimaryTextStyle.copyWith(
                  color: color,
                ),
              )
            ],
          ),
          Text(
            number.toString(),
            style: kPrimaryTextStyle.copyWith(
              fontSize: 30,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
