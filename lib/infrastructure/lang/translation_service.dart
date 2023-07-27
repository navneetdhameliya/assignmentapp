import 'package:assignmentapp/infrastructure/lang/en.dart';
import 'package:assignmentapp/infrastructure/lang/ko.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('ko', 'KR');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    const Locale('en', 'US'),
    const Locale('ko', 'KR'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'ko': ko,
  };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    //final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(Locale(lang));
  }

  // Finds language in `langs` list and returns it as Locale
  /*Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }*/
}