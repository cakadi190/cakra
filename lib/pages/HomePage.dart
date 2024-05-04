import 'package:cakra/pages/HomePage/SliderHome.dart';
import 'package:cakra/pages/HomePage/WelcomeHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

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

    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  /// Change Status Bar Color [Docs Here](https://stackoverflow.com/a/73598212/17911271)
  void changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: <Widget>[
      //     SizedBox(height: MediaQuery.of(context).size.height * 0.0625),
      //     WelcomeHome(),
      //     SizedBox(height: 24),
      //     SliderHome()
      //   ],
      // ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        // controller: _tabController,
        controller: _motionTabBarController,
        children: <Widget>[
          const Column(
            children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.0625),
                  WelcomeHome(),
                  SizedBox(height: 24),
                  SliderHome()
            ],
          ),
          const Center(
            child: Text("Home"),
          ),
          const Center(
            child: Text("Profile"),
          ),
          const Center(
            child: Text("Settings"),
          ),
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Home",
        labels: const ["Dashboard", "Home", "Profile", "Settings"],
        icons: const [Icons.dashboard, Icons.home, Icons.people_alt, Icons.settings],

        // optional badges, length must be same with labels
        badges: [
          // Default Motion Badge Widget
          const MotionBadgeWidget(
            text: '10+',
            textColor: Colors.white, // optional, default to Colors.white
            color: Colors.red, // optional, default to Colors.red
            size: 18, // optional, default to 18
          ),

          // custom badge Widget
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(2),
            child: const Text(
              '11',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),

          // allow null
          null,

          // Default Motion Badge Widget with indicator only
          const MotionBadgeWidget(
            isIndicator: true,
            color: Colors.blue, // optional, default to Colors.red
            size: 5, // optional, default to 5,
            show: true, // true / false
          ),
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.blue[600],
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.blue[900],
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            _motionTabBarController!.index = value;
          });
        },
      ),
    );
  }
}