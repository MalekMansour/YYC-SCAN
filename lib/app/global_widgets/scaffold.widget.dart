import 'package:flutter/material.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';
import 'package:yyc_scan/app/global_widgets/images/logo.widget.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  const ScaffoldWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Center(
                child: Image.asset(Constants().isDarkMode
                    ? AppStrings().backgroundElementDarkImageUrl
                    : AppStrings().backgroundElementLightImageUrl)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LogoWidget(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                  ],
                ),
                Expanded(child: child)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
