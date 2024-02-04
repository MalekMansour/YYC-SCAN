import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        showBackgroundAsset: false,
        scaffoldKey: controller.scaffoldKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: AppColors().linearGradient),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Name',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            Text('Bio and stuff', style: appBarText)
          ]),
        ));
  }
}
