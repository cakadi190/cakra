import 'package:cakra/components/slider_component.dart';
import 'package:cakra/models/navigation_tap_model.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final List<NavigationTapModel> items = [
    NavigationTapModel(
      label: "Pramuka Siaga",
      image: "assets/images/home_slider/pramuka-siaga.jpg",
      onTapTarget: () {
        debugPrint("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Penggalang",
      image: "assets/images/home_slider/pramuka-penggalang.jpg",
      onTapTarget: () {
        debugPrint("Item 2 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Penegak",
      image: "assets/images/home_slider/pramuka-penegak.jpg",
      onTapTarget: () {
        debugPrint("Item 3 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Pandega",
      image: "assets/images/home_slider/pramuka-pandega.jpg",
      onTapTarget: () {
        debugPrint("Item 3 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Dewasa",
      image: "assets/images/home_slider/pramuka-dewasa.jpeg",
      onTapTarget: () {
        debugPrint("Item 3 clicked");
      },
    ),
  ];

  HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderComponent(items: items);
  }
}