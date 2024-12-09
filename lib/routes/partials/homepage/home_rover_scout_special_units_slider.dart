import 'package:cakra/models/navigation_tap_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeRoverScoutSpecialUnitsSlider extends StatelessWidget {
  final List<NavigationTapModel> items = [
    NavigationTapModel(
      label: "Bayangkara",
      image: "assets/images/logo-saka/saka-bhayangkara.png",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Bakti Husada",
      image: "assets/images/logo-saka/saka-bakti-husada.png",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Dirgantara",
      image: "assets/images/logo-saka/saka-dirgantara.png",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Bahari",
      image: "assets/images/logo-saka/saka-bahari.png",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Kencana",
      image: "assets/images/logo-saka/saka-kencana.png",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
  ];

  List<NavigationTapModel> _otherSpecialUnitsItems(BuildContext context) => [
        NavigationTapModel(
          label: "Bayangkara",
          image: "assets/images/logo-saka/saka-bhayangkara.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Bakti Husada",
          image: "assets/images/logo-saka/saka-bakti-husada.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Dirgantara",
          image: "assets/images/logo-saka/saka-dirgantara.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Bahari",
          image: "assets/images/logo-saka/saka-bahari.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Bina Sosial",
          image: "assets/images/logo-saka/saka-bina-sosial.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Pariwisata",
          image: "assets/images/logo-saka/saka-pariwisata.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Milenial",
          image: "assets/images/logo-saka/saka-milenial.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Telematika",
          image: "assets/images/logo-saka/saka-telematika.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Pandu Wisata",
          image: "assets/images/logo-saka/saka-pandu-wisata.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Taruna Bumi",
          image: "assets/images/logo-saka/saka-taruna-bumi.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Wira Kartika",
          image: "assets/images/logo-saka/saka-wira-kartika.png",
          onTapTarget: () {
            debugPrint("Item 1 clicked");
          },
        ),
        NavigationTapModel(
          label: "Kencana",
          image: "assets/images/logo-saka/saka-kencana.png",
          onTapTarget: () {
            debugPrint("Item clicked");
          },
        ),
        NavigationTapModel(
          label: "Wanabakti",
          image: "assets/images/logo-saka/saka-wanabakti.png",
          onTapTarget: () {
            debugPrint("Item clicked");
          },
        ),
      ];

  HomeRoverScoutSpecialUnitsSlider({super.key});

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
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                        ),
                        builder: (BuildContext context) {
                          return DraggableScrollableSheet(
                            expand: false,
                            initialChildSize: 0.28,
                            minChildSize: 0.28,
                            maxChildSize: 0.9,
                            builder: (BuildContext context,
                                ScrollController scrollController) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(16),
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  controller: scrollController,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              150, 0, 150, 24),
                                          child: Container(
                                            height: 8,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                        ),
                                        GridView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            crossAxisSpacing:
                                                0, // Ubah dari 2 ke 0
                                            mainAxisSpacing:
                                                0, // Ubah dari 2 ke 0
                                            childAspectRatio: 1,
                                          ),
                                          itemCount:
                                              _otherSpecialUnitsItems(context)
                                                  .length,
                                          itemBuilder: (context, index) {
                                            final item =
                                                _otherSpecialUnitsItems(
                                                    context)[index];
                                            return InkWell(
                                              onTap: item.onTapTarget,
                                              child: Container(
                                                // Hapus padding atau atur padding ke nol
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 48,
                                                      child: Image.asset(
                                                          item.image),
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      item.label,
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Lihat Semuanya',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                        const SizedBox(width: 4),
                        FaIcon(
                          FontAwesomeIcons.arrowRight,
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
