import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ThemeService extends GetxController {
  late Box themeBox;
  var isDarkMode = false.obs;

  // Initialize the service and load saved theme preference
  @override
  void onInit() async {
    super.onInit();
    themeBox = await Hive.openBox('themeBox');
    isDarkMode.value = themeBox.get('isDarkMode', defaultValue: false);
    // Change theme mode when the app starts
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  // Toggle theme mode
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    themeBox.put('isDarkMode', isDarkMode.value);
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
