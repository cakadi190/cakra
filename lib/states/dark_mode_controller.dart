import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  final _isDarkMode = false.obs;

  bool get isDarkMode => _isDarkMode.value;
  ThemeData get theme => _isDarkMode.value ? darkTheme : lightTheme;

  static final lightTheme = ThemeData(
    primaryColor: Colors.brown,
    primarySwatch: Colors.brown,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.signikaTextTheme(ThemeData.light().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.brown),
      titleTextStyle: GoogleFonts.signika(
        color: Colors.brown,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.brown,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.brown,
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.brown[300],
    primarySwatch: Colors.brown,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.brown[900],
    textTheme: GoogleFonts.signikaTextTheme(ThemeData.dark().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.brown[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: GoogleFonts.signika(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown[300],
        foregroundColor: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.brown[300],
    ),
  );

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromBox();
  }

  void _loadThemeFromBox() {
    _isDarkMode.value = _box.read(_key) ?? false;
    Get.changeTheme(theme);
  }

  void _saveThemeToBox(bool isDarkMode) {
    _box.write(_key, isDarkMode);
  }

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeTheme(theme);
    _saveThemeToBox(_isDarkMode.value);
  }

  void toDark() {
    _isDarkMode.value = true;
    Get.changeTheme(darkTheme);
    _saveThemeToBox(true);
  }

  void toLight() {
    _isDarkMode.value = false;
    Get.changeTheme(lightTheme);
    _saveThemeToBox(false);
  }
}