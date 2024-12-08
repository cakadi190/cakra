import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              onPressed: () {},
              icon: Icon(Icons.info),
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
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  crossAxisCount: 4,
                  children: [
                    InkWell(
                      onTap: () {
                        print('Item 1 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 48,
                              child: Image.asset('assets/images/icons/semaphore.png')
                            ),
                            Text('Semaphore', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 2 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/map.png')
                            ),
                            Text('Peta', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 3 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/notepad.png')
                            ),
                            Text('Kecakapan', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 4 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/boy-scout.png')
                            ),
                            Text('SAKA', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 5 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/paper-plane.png')
                            ),
                            Text('Persandian', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 6 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/pramuka.png')
                            ),
                            Text('PramukaID', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 7 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/quiz.png')
                            ),
                            Text('Quiz', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Item 8 clicked');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 48,
                                child: Image.asset('assets/images/icons/newspaper.png')
                            ),
                            Text('Berita', textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
