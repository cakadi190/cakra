import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SliderHome extends StatefulWidget {
  const SliderHome({super.key});

  @override
  State<StatefulWidget> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  int _currentIndex = 0;
  double _imageHeight = 200.0;

  final List<String> _images = [
    'assets/images/slider-home/slider-siaga.jpg',
    'assets/images/slider-home/slider-penggalang.JPG',
    'assets/images/slider-home/slider-penegak.jpg',
    'assets/images/slider-home/slider-racana.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: _imageHeight,
            enlargeCenterPage: false,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: _images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  onTap: () {
                    print("Clicked");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16),
        DotsIndicator(
          dotsCount: _images.length,
          position: _currentIndex,
        )
      ],
    );
  }
}