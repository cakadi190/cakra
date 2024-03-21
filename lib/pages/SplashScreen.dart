import 'package:cakra/helpers/RedirectHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenWidget();
}

class SplashScreenWidget extends State<SplashScreen> {
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

    // Redirect to new Routing
    RedirectHelper.redirect(context, '/home', duration: 5);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox(height: 20)),
          Padding(padding: EdgeInsets.all(24),child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Logo
                Image.asset(
                  'assets/images/cakra-01.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 16),
                /// Text above logo
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cakap Pramuka',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Aplikasi buku saku pramuka digital untuk Android dan iOS.',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),

          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
