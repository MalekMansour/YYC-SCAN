import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slide_indexed_stack/slide_indexed_stack.dart';
import 'package:yyc_scan/app/core/theme/app_color.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/scaffold.widget.dart';
import 'package:yyc_scan/app/global_widgets/texts/title.widget.dart';
import 'package:yyc_scan/app/modules/home/widgets/you_statistics_level_and_exp.widget.dart';
import 'package:yyc_scan/app/modules/profile/widgets/achievements.widget.dart';
import 'package:yyc_scan/app/modules/profile/widgets/coupons.widget.dart';
import 'package:yyc_scan/app/modules/profile/widgets/coupons_tile.widget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SlideIndexedStack(
        index: controller.index.value,
        children: [profile(), CouponsWidget(), AchievementsWidget()],
      ),
    );
  }

  Widget profile() {
    return ScaffoldWidget(
        showBackgroundAsset: false,
        scaffoldKey: controller.scaffoldKey,
        child: SingleChildScrollView(
          primary: false,
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
                height: 8,
              ),
              Text('Bio and stuff', style: appBarText),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors().grey)),
                  onPressed: () {},
                  child: Text('Edit Profile'.tr)),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors().grey),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: YourStatisticsLevelAndExpWidget(),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      controller.index.value = 2;
                    },
                    child: Container(
                      height: 75,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors().grey),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.abc), Text('Achievements'.tr)]),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleWidget(text: 'Your coupons'.tr),
                  InkWell(
                      onTap: () {
                        controller.index.value = 1;
                      },
                      child: Text('See more...'.tr))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: AppColors().grey,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  for (int i = 0; i < 2; i++)
                    CouponsTileWidget(
                      title: 'Tim Hortons',
                      subtitle: 'Expiry Date: Nov 10, 2023',
                    )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              TitleWidget(text: 'Recently Visited'.tr),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: AppColors().grey,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  for (int i = 0; i < 2; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tim Hortons',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Expiry Date: Nov 10, 2024',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ]),
              )
            ]),
          ),
        ));
  }
}
