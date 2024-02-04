import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';

class TopPlacesWidget extends StatelessWidget {
  const TopPlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWidget(iconData: Icons.place, text: 'Top Places'.tr),
              Text('See more...'.tr)
            ],
          ),
        ],
      ),
    );
  }
}
