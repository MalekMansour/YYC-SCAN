import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/navigation/navigation_controller.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/controller/scaffold.controller.dart';
import 'package:yyc_scan/app/modules/activities/controllers/activities_controller.dart';
import 'package:yyc_scan/app/modules/home/controllers/home_controller.dart';
import 'package:yyc_scan/app/modules/scan/controllers/scan_controller.dart';

class DependencyCreator {
  void init() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ScanController());
    Get.lazyPut(() => ActivitiesController());
    Get.lazyPut(() => ScaffoldController());
  }
}
