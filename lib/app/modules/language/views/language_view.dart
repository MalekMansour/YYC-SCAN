import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yyc_scan/app/data/models/language_model.dart';
import 'package:yyc_scan/app/global_widgets/fields/search_bar.widget.dart';
import 'package:yyc_scan/app/modules/language/controllers/language_controller.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';

class LanguageView extends GetView<LanguageController> {
  const LanguageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Language'.tr),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            primary: false,
            padding: const EdgeInsets.all(20),
            children: [
              const SearchBarWidget(),
              const SizedBox(
                height: 30,
              ),
              for (LanguageModel lang in controller.languages)
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () async {
                        await Get.updateLocale(
                            Locale(lang.languageCode, lang.countryCode));
                      },
                      child: Text(
                        lang.languageName,
                        style: TextStyle(
                            fontSize: 20,
                            color:
                                Get.locale?.countryCode == lang.countryCode &&
                                        Get.locale?.languageCode ==
                                            lang.languageCode
                                    ? Colors.white
                                    : Colors.grey,
                            fontWeight:
                                Get.locale?.countryCode == lang.countryCode &&
                                        Get.locale?.languageCode ==
                                            lang.languageCode
                                    ? FontWeight.bold
                                    : null),
                      ),
                    ))
            ],
          ),
        ));
  }
}
