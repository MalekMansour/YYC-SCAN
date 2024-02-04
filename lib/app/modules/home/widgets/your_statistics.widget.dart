import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/texts/key_with_value.widget.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/you_statistics_level_and_exp.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/your_statistics_level.widget.dart';

class YourStatisticsWidget extends StatelessWidget {
  const YourStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TitleWidget(
              iconData: Icons.newspaper_rounded, text: 'Your Statistics'.tr),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 110,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).colorScheme.surface),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        YourStatisticsLevelAndExpWidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KeyWithValueWidget(title: 'Visited:', value: '10'),
                            KeyWithValueWidget(title: 'Achv:', value: '10'),
                          ],
                        )
                      ]),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 110,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).colorScheme.surface),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your\ncoupons'.tr,
                        textAlign: TextAlign.center,
                        style: buttonText,
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
