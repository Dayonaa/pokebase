import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebase/controllers/setting_controller.dart';

class Settings extends GetView<SettingController> {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Switch(
            value: controller.isDarkMode.value,
            onChanged: (c) => controller.changeTheme(c),
          ),
        ),
      ],
    );
  }
}
