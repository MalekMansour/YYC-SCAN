import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  PersistentTabController? controller;

  RxList activity = RxList(["HIII"]);

  getActivities(){
  activity.add('Hello');
  }

  final count = 0.obs;
  @override
  void onInit() {
    controller = PersistentTabController(initialIndex: 0);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
