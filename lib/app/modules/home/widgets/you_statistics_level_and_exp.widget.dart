import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/texts/key_with_value.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/your_statistics_level.widget.dart';

class YourStatisticsLevelAndExpWidget extends StatelessWidget {
  const YourStatisticsLevelAndExpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            style: menuText.copyWith(fontWeight: FontWeight.w700),
          )),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            children: [
              const KeyWithValueWidget(title: 'Exp:', value: '500/1000'),
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
    );
  }
}
