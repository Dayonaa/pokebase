import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebase/constants/app_themes.dart';
import 'package:pokebase/utiilities/extensions.dart';

class SettingController extends GetxController {
  RxBool isDarkMode = RxBool(Get.isDarkMode);

  @override
  void onInit() {
    super.onInit();
    controllerCreated();
  }

  void changeTheme(bool c) {
    isDarkMode.value = c;
    Get.changeThemeMode(c ? ThemeMode.dark : ThemeMode.light);
    Get.changeTheme(c ? AppThemes.darkTheme : AppThemes.lightTheme);
  }
}
