import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/app_theme.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';
import 'package:yyc_scan/app/utils/dependency_creator.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyCreator().init();
  runApp(
    GetMaterialApp(
      title: AppStrings().appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Constants().isDarkMode ? darkTheme : lightTheme,
      builder: EasyLoading.init(),
    ),
  );
}
