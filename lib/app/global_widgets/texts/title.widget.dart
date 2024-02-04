import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';

class TitleWidget extends StatelessWidget {
  final IconData? iconData;
  final String text;
  const TitleWidget({super.key, this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (iconData != null) Icon(iconData),
        if (iconData != null)
          const SizedBox(
            width: 8,
          ),
        Text(
          text,
          style: subTitle,
        ),
      ],
    );
  }
}
