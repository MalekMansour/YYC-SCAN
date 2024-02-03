import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Constants().isDarkMode
          ? AppStrings().logoDarkImageUrl
          : AppStrings().logoLightImageUrl,
      width: 80,
    );
  }
}
