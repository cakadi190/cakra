import 'package:cakra/pages/HomePage/SliderHome.dart';
import 'package:cakra/pages/HomePage/WelcomeHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Initialize the code before run
  ///
  /// This method to initialize the code before it runs.
  ///
  /// - [Change the status bar color and background reference](https://stackoverflow.com/a/73598212/17911271)
  /// - [Future Delayed and Redirect reference](https://medium.com/@saurabhsinghaswal/how-to-run-code-after-time-delay-in-flutter-app-317902428794)
  @override
  void initState() {
    super.initState();

    changeStatusBar();
  }

  /// Change Status Bar Color [Docs Here](https://stackoverflow.com/a/73598212/17911271)
  void changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.brown.shade100,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.brown.shade100,
          systemNavigationBarIconBrightness: Brightness.dark
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: <Widget>[
            WelcomeHome(),
            SizedBox(height: 8),
            SliderHome()
          ],
        ),
      ),
    );
  }
}