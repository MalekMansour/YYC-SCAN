import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/drawer.widget.dart';
import 'package:yyc_scan/app/modules/profile/controllers/profile_controller.dart';
import 'package:yyc_scan/app/modules/profile/widgets/coupons_tile.widget.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';

class CouponsWidget extends GetView<ProfileController> {
  const CouponsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              if (Get.currentRoute != Routes.NAVIGATION) {
                Get.back();
              } else {
                controller.index.value = 0;
              }
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Your coupons'.tr),
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
            CouponsTileWidget(
              title: 'Tim Hortons',
              subtitle: 'Expiry Date: Nov 10, 2023',
            )
        ]),
      ),
    );
  }
}
