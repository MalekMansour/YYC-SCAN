import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yyc_scan/app/global_widgets/fields/search_bar.widget.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'.tr),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  children: [
                    const SearchBarWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Your account'.tr,
                      style: TextStyle(),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_1.png'),
                      title: Text('Account'.tr),
                      subtitle: Text(
                        'Password, personal details, etc.'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Interface'.tr,
                      style: TextStyle(),
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(Routes.LANGUAGE);
                      },
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_2.png'),
                      title: Text('Language'.tr),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_3.png'),
                      title: Text('Color Palette'.tr),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_4.png'),
                      title: const Text('Accessibility'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Miscellaneous'.tr,
                      style: TextStyle(),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_5.png'),
                      title: Text('Redeem Code'.tr),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: false,
                      leading: Image.asset('assets/images/settings_6.png'),
                      title: Text('About'.tr),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  onTap: () async {
                    EasyLoading.show(status: 'Logging out...'.tr);
                    await Future.delayed(Duration(seconds: 2));
                    SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.clear();
                    Get.offAndToNamed(Routes.SIGN_IN);
                    EasyLoading.dismiss();
                  },
                  contentPadding: EdgeInsets.zero,
                  dense: false,
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text(
                    'Logout'.tr,
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ));
  }
}
