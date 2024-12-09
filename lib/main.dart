import 'dart:async';
import 'dart:io';
import 'package:cakra/constants/theme.dart';
import 'package:cakra/helpers/device_helper.dart';
import 'package:desktop_window/desktop_window.dart';

import 'package:cakra/routes/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  
  if (Platform.isWindows) {
    WidgetsFlutterBinding.ensureInitialized();
    await DesktopWindow.setMinWindowSize(const Size(1280, 720));
    await DesktopWindow.setMaxWindowSize(const Size(1280, 720));
  }
  runApp(const CakraApp());
}

class CakraApp extends StatelessWidget {
  const CakraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cakra',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const CakraLandingPage(),
    );
  }
}

class CakraLandingPage extends StatefulWidget {
  const CakraLandingPage({super.key});

  @override
  State<CakraLandingPage> createState() => _CakraLandingPageState();
}

class _CakraLandingPageState extends State<CakraLandingPage> {
  late Timer _navigationTimer;
  late Timer _textRotationTimer;
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  final DeviceHelper _deviceHelper = DeviceHelper();

  final List<String> _messages = [
    "Mohon Tunggu Sebentar",
    "Sedang Memeriksa Lingkungan",
    "Sedang Memeriksa Jaringan"
  ];
  int _currentIndex = 0;

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _navigationTimer.cancel();
    _textRotationTimer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _startTextRotation();

    _deviceHelper.initTheme(context);
    _navigationTimer = Timer(const Duration(seconds: 5), _navigateToHomePage);
  }

  void _navigateToHomePage() {
    if (mounted) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage())
      );
    }
  }

  void _startTextRotation() {
    _textRotationTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _messages.length;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox(height: 16)),
            SizedBox(height: 128, child: Image.asset('assets/images/logo-main.png')),
            const SizedBox(height: 24),
            const Text(
              "Cakap Pramuka",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              _messages[_currentIndex],
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const SizedBox(
              height: 20.0,
              width: 20.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("v1.0.0", style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
                      const SizedBox(height: 4),
                      Builder(
                        builder: (context) {
                          return RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodySmall,
                              children: [
                                const TextSpan(text: "Copyright "),
                                TextSpan(
                                  text: "Kodingin Digital Nusantara",
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.primary,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: _tapGestureRecognizer
                                    ..onTap = () {
                                      // UrlUtility.launchInBrowser('https://www.cakadi.web.id' as Uri);
                                    },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}