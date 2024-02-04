import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/app_theme.dart';
import 'package:yyc_scan/app/core/values/constants.dart';
import 'package:yyc_scan/app/core/values/strings.dart';
import 'package:yyc_scan/app/core/values/translations.dart';
import 'package:yyc_scan/app/utils/dependency_creator.dart';
import 'package:yyc_scan/firebase_options.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyCreator().init();
  runApp(
    GetMaterialApp(
      title: AppStrings().appName,
      locale: const Locale('en', 'CA'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Constants().isDarkMode ? darkTheme : lightTheme,
      builder: EasyLoading.init(),
      translationsKeys: AppTranslation.translations,
    ),
  );
}
