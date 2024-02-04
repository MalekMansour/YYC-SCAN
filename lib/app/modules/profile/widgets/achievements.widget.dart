import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/drawer.widget.dart';
import 'package:yyc_scan/app/modules/profile/controllers/profile_controller.dart';
import 'package:yyc_scan/app/modules/profile/widgets/achievements_tile.widget.dart';
import 'package:yyc_scan/app/modules/profile/widgets/coupons_tile.widget.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';

class AchievementsWidget extends GetView<ProfileController> {
  const AchievementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              controller.index.value = 0;
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Achievements'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.SETTINGS);
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          for (int i = 0; i < 20; i++)
            const AchievementsTileWidget(
              title: 'Visit 50 places',
              total: 100,
              completed: 100,
            )
        ]),
      ),
    );
  }
}
