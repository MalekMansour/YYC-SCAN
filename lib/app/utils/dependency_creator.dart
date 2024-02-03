import 'package:get/get.dart';
import 'package:yyc_scan/app/global_widgets/navigation/navigation_controller.dart';
import 'package:yyc_scan/app/global_widgets/scaffold/controller/scaffold.controller.dart';

class DependencyCreator {
  void init() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => ScaffoldController());
  }
}
