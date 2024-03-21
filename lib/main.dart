import 'package:cakra/pages/HomePage.dart';
import 'package:cakra/pages/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CakapPramukaAppBase());
}

class CakapPramukaAppBase extends StatelessWidget {
  const CakapPramukaAppBase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cakap Pramuka',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/' : (context) => SplashScreen(),
        '/home' : (context) => HomePage()
      },
    );
  }
}
