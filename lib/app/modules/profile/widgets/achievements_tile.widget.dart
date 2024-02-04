import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';

class AchievementsTileWidget extends StatelessWidget {
  final String title;

  final double total;
  final double completed;
  const AchievementsTileWidget(
      {super.key,
      required this.title,
      required this.total,
      required this.completed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text('Progress: ${completed.toInt()}/${total.toInt()}'),
                const SizedBox(
                  height: 4,
                ),
                LinearProgressIndicator(
                  value: completed / total,
                  color: Color(0xFF7D4294),
                  backgroundColor: AppColors().grey,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          if (completed == total)
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 3, color: Color(0xFFD42637))),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.check,
                    color: Color(0xFFD42637),
                  ),
                ))
        ],
      ),
    );
  }
}
