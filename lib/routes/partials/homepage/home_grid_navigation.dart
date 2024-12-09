import 'package:flutter/material.dart';

class NavigationTapModel {
  final String label;
  final String image;
  final Function() onTapTarget;

  NavigationTapModel({
    required this.label,
    required this.image,
    required this.onTapTarget,
  });
}

class HomeGridNavigation extends StatelessWidget {
  const HomeGridNavigation({super.key});

  List<NavigationTapModel> get _navigationItems => [
        NavigationTapModel(
          label: 'Semaphore',
          image: 'assets/images/icons/semaphore.png',
          onTapTarget: () => print('Item 1 clicked'),
        ),
        NavigationTapModel(
          label: 'Peta',
          image: 'assets/images/icons/map.png',
          onTapTarget: () => print('Item 2 clicked'),
        ),
        NavigationTapModel(
          label: 'Kecakapan',
          image: 'assets/images/icons/notepad.png',
          onTapTarget: () => print('Item 3 clicked'),
        ),
        NavigationTapModel(
          label: 'SAKA',
          image: 'assets/images/icons/boy-scout.png',
          onTapTarget: () => print('Item 4 clicked'),
        ),
        NavigationTapModel(
          label: 'Persandian',
          image: 'assets/images/icons/paper-plane.png',
          onTapTarget: () => print('Item 5 clicked'),
        ),
        NavigationTapModel(
          label: 'PramukaID',
          image: 'assets/images/icons/pramuka.png',
          onTapTarget: () => print('Item 6 clicked'),
        ),
        NavigationTapModel(
          label: 'Quiz',
          image: 'assets/images/icons/quiz.png',
          onTapTarget: () => print('Item 7 clicked'),
        ),
        NavigationTapModel(
          label: 'Berita',
          image: 'assets/images/icons/newspaper.png',
          onTapTarget: () => print('Item 8 clicked'),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      crossAxisCount: 4,
      children: _navigationItems
          .map((item) => InkWell(
                onTap: item.onTapTarget,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 48,
                        child: Image.asset(item.image),
                      ),
                      Text(item.label, textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
