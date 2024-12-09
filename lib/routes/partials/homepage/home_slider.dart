import 'package:cakra/components/slider_component.dart';
import 'package:cakra/models/navigation_tap_model.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final List<NavigationTapModel> items = [
    NavigationTapModel(
      label: "Pramuka Siaga",
      image: "assets/images/home_slider/pramuka-siaga.jpg",
      onTapTarget: () {
        print("Item 1 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Penggalang",
      image: "assets/images/home_slider/pramuka-penggalang.jpg",
      onTapTarget: () {
        print("Item 2 clicked");
      },
    ),
    NavigationTapModel(
      label: "Pramuka Penegak",
      image: "assets/images/home_slider/pramuka-penegak.jpg",
      onTapTarget: () {
        print("Item 3 clicked");
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