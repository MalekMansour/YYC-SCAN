import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:yyc_scan/app/modules/home/views/home_view.dart';

class NavigationController extends GetxController {
  PersistentTabController? controller;

  @override
  void onInit() {
    // TODO: implement onInit
    controller = PersistentTabController(initialIndex: 0);
    super.onInit();
  }
}
