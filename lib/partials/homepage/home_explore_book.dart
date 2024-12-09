import 'package:flutter/material.dart';

class HomeExploreBook extends StatefulWidget {
  const HomeExploreBook({super.key});

  @override
  HomeExploreBookState createState() => HomeExploreBookState();
}

class HomeExploreBookState extends State<HomeExploreBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Baca Buku',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold
                )
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
