import 'package:cakra/models/navigation_tap_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSatuanKaryaSlider extends StatelessWidget {
  final List<NavigationTapModel> items = [
    NavigationTapModel(
      label: "Bayangkara",
      image: "assets/images/logo-saka/saka-bhayangkara.png",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Bakti Husada",
      image: "assets/images/logo-saka/saka-bakti-husada.png",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Dirgantara",
      image: "assets/images/logo-saka/saka-dirgantara.png",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Bahari",
      image: "assets/images/logo-saka/saka-bahari.png",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Kencana",
      image: "assets/images/logo-saka/saka-kencana.png",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
  ];

  HomeSatuanKaryaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Satuan Karya',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Lihat Semuanya',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              CarouselSlider(
                options: CarouselOptions(
                  height: 128.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 7),
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 0.3, // Tetap menjaga jarak antar elemen
                  enableInfiniteScroll: true,
                  padEnds: false, // Hindari padding otomatis di awal dan akhir
                ),
                items: items.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: item.onTapTarget,
                        child: Container(
                          width: 128.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 64,
                                child: Image.asset(item.image),
                              ),
                              const SizedBox(height: 2),
                              Text(item.label, textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}