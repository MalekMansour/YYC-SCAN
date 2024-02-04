import 'package:get/get.dart';

import '../global_widgets/navigation/navigation.widget.dart';
import '../modules/activities/bindings/activities_binding.dart';
import '../modules/activities/views/activities_view.dart';
import '../modules/coupons/bindings/coupons_binding.dart';
import '../modules/coupons/views/coupons_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/scan/bindings/scan_binding.dart';
import '../modules/scan/views/scan_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationWidget(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITIES,
      page: () => const ActivitiesView(),
      binding: ActivitiesBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.COUPONS,
      page: () => const CouponsView(),
      binding: CouponsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
  ];
}
