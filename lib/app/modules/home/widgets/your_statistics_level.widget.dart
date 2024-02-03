import 'package:flutter/material.dart';

class YourStatisticsLevelWidget extends StatelessWidget {
  final bool isCompleted;
  const YourStatisticsLevelWidget({super.key, required this.isCompleted});

  static final Color completeColor = Color(0xFF7D4294);
  static final Color incompleteColor = Color(0xFFF4F4F4);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isCompleted ? completeColor : incompleteColor),
      ),
    );
  }
}
