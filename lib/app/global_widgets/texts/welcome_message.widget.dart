import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';

class WelcomeMessageWidget extends StatelessWidget {
  final String name;
  const WelcomeMessageWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/hand-waving.png',
            height: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              'Hello, $name!',
              style: title,
            ),
          )
        ],
      ),
    );
  }
}
