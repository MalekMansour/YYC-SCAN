import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/texts/key_with_value.widget.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';
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
          const TitleWidget(
              iconData: Icons.newspaper_rounded, text: 'Your Statistics'),
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 40,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/your-statistics-level-background.png'))),
                              child: Center(
                                  child: Text(
                                '10',
                                style: menuText.copyWith(
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const KeyWithValueWidget(
                                      title: 'Exp:', value: '500/1000'),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    height: 8,
                                    width: Size.infinite.width,
                                    child: const Row(
                                      children: [
                                        YourStatisticsLevelWidget(
                                          isCompleted: true,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        YourStatisticsLevelWidget(
                                          isCompleted: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Row(
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
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your\nCoupons',
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
