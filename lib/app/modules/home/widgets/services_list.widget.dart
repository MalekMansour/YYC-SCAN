import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/activities.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/services.widget.dart';

class ServicesListwidget extends StatelessWidget {
  const ServicesListwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWidget(iconData: Icons.place, text: 'Services'.tr),
              Text('See more...'.tr)
            ],
          ),
          ServicesCard(
            length: 3,
          )
        ],
      ),
    );
  }
}
