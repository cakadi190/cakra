import 'package:cakra/models/navigation_tap_model.dart';
import 'package:flutter/material.dart';

class HomeGridNavigation extends StatefulWidget {
  const HomeGridNavigation({super.key});

  @override
  State<HomeGridNavigation> createState() => _HomeGridNavigationState();
}

class _HomeGridNavigationState extends State<HomeGridNavigation> {
  List<NavigationTapModel> _getNavigationItems(BuildContext context) => [
        NavigationTapModel(
          label: 'Semaphore',
          image: 'assets/images/icons/semaphore.png',
          onTapTarget: () => debugPrint('Item 1 clicked'),
        ),
        NavigationTapModel(
          label: 'Peta',
          image: 'assets/images/icons/map.png',
          onTapTarget: () => debugPrint('Item 2 clicked'),
        ),
        NavigationTapModel(
          label: 'Kecakapan',
          image: 'assets/images/icons/notepad.png',
          onTapTarget: () => debugPrint('Item 3 clicked'),
        ),
        NavigationTapModel(
          label: 'SAKA',
          image: 'assets/images/icons/boy-scout.png',
          onTapTarget: () => debugPrint('Item 4 clicked'),
        ),
        NavigationTapModel(
          label: 'Persandian',
          image: 'assets/images/icons/padlock.png',
          onTapTarget: () => debugPrint('Item 5 clicked'),
        ),
        NavigationTapModel(
          label: 'P3K',
          image: 'assets/images/icons/first-aid-box.png',
          onTapTarget: () => debugPrint('Item 7 clicked'),
        ),
        NavigationTapModel(
          label: 'Simpul',
          image: 'assets/images/icons/reef-knot.png',
          onTapTarget: () => debugPrint('Item 8 clicked'),
        ),
        NavigationTapModel(
          label: 'Lainnya',
          image: 'assets/images/icons/info.png',
          onTapTarget: () => {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16))),
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Dasar Kepramukaan',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ])),
                );
              },
            )
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
          child: Text("Dasar Kepramukaan",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 4,
          children: _getNavigationItems(context)
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
                          Text(item.label, textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}

