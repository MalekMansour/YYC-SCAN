import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';
 
class LogoWidget extends StatelessWidget {
  final double? width;
  const LogoWidget({super.key, this.width});

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
