import 'package:cakra/constants/theme.dart';
import 'package:cakra/routes/about_page.dart';
import 'package:cakra/routes/partials/homepage/home_grid_navigation.dart';
import 'package:cakra/routes/partials/homepage/home_rover_scout_special_units_slider.dart';
import 'package:cakra/routes/partials/homepage/home_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cakra',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: Scaffold(
          appBar: AppBar(title: const Text("Beranda"), actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutPage()),
              ),
              icon: const Icon(Icons.info),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ]),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                HomeSlider(),
                HomeGridNavigation(),
                HomeRoverScoutSpecialUnitsSlider()
              ],
            ),
          ),
        ));
  }
}
