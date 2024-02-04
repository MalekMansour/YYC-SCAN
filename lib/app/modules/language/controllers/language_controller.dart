import 'package:get/get.dart';
import 'package:yyc_scan/app/data/models/language_model.dart';

class LanguageController extends GetxController {
  List<LanguageModel> languages = [
    LanguageModel(
        languageName: 'English', countryCode: 'CA', languageCode: 'en'),
    LanguageModel(
        languageName: 'French', countryCode: 'CA', languageCode: 'fr'),
    LanguageModel(
        languageName: 'Punjabi', countryCode: 'CA', languageCode: 'pa'),
    LanguageModel(
        languageName: 'Spanish', countryCode: 'CA', languageCode: 'es'),
    LanguageModel(
        languageName: 'Italian', countryCode: 'CA', languageCode: 'it'),
    LanguageModel(
        languageName: 'Korean', countryCode: 'CA', languageCode: 'ko'),
    LanguageModel(
        languageName: 'German', countryCode: 'CA', languageCode: 'de'),
    LanguageModel(
        languageName: 'Cantonese', countryCode: 'CA', languageCode: 'zh'),
    LanguageModel(
        languageName: 'Tagalog', countryCode: 'CA', languageCode: 'tl'),
    LanguageModel(
        languageName: 'Arabic', countryCode: 'CA', languageCode: 'ar'),
    LanguageModel(languageName: 'Tamil', countryCode: 'CA', languageCode: 'ta'),
  ];
}
