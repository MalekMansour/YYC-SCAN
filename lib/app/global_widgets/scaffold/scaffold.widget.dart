import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';
import 'package:yyc_scan/app/global_widgets/images/logo.widget.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/controller/scaffold.controller.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/drawer.widget.dart';

class ScaffoldWidget extends GetView<ScaffoldController> {
  final Widget child;
  final bool showBackgroundAsset;
  final EdgeInsets? backgroundElementPadding;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ScaffoldWidget(
      {super.key,
      required this.child,
      this.showBackgroundAsset = true,
      this.backgroundElementPadding,
      required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: DrawerWidget(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: body());
  }

  Widget body() {
    return Stack(
      children: [
        if (showBackgroundAsset)
          Padding(
            padding:
                backgroundElementPadding ?? const EdgeInsets.only(bottom: 150),
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
                  IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      icon: const Icon(Icons.menu))
                ],
              ),
              Expanded(
                  child: SizedBox(width: Size.infinite.width, child: child))
            ]),
          ),
        ),
      ],
    );
  }
}
