import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/navigation/navigation_controller.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/controller/scaffold.controller.dart';
import 'package:yyc_scan/app/modules/home/controllers/home_controller.dart';

class DependencyCreator {
  void init() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ScaffoldController());
  }
}
