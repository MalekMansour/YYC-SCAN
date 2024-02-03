import 'package:flutter/material.dart';

import '../../core/theme/text_theme.dart';

class KeyWithValueWidget extends StatelessWidget {
  final String title;
  final String value;
  const KeyWithValueWidget(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: appBarText,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          value,
          style: appBarText.copyWith(fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
