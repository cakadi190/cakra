import 'package:cakra/routes/about_page.dart';
import 'package:cakra/routes/partials/homepage/home_grid_navigation.dart';
import 'package:cakra/routes/partials/homepage/home_rover_scout_special_units_slider.dart';
import 'package:cakra/routes/partials/homepage/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:cakra/states/dark_mode_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Cakra',
        theme: themeController.theme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text("Beranda"), actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutPage()),
              ),
              icon: const Icon(Icons.info),
            ),
            Obx(() => IconButton(
                  onPressed: themeController.toggleTheme,
                  icon: Icon(themeController.isDarkMode
                      ? Icons.dark_mode
                      : Icons.light_mode),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ]),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HomeSlider(),
                const HomeGridNavigation(),
                HomeRoverScoutSpecialUnitsSlider()
              ],
            ),
          ),
        ));
  }
}
