import 'package:basics/screens/home/home_screen_titles.dart';
import 'package:basics/screens/home/home_tile.dart';
import 'package:flutter/material.dart';

import '../../model/magazine_model.dart';
class HomeScreen extends StatelessWidget {

List<MagazineModel> magazines = [
  MagazineModel(title: "sports", imagePath: "assets/sports.jpg"),
  MagazineModel(title: "cars", imagePath: "assets/cars.jpg"),
  MagazineModel(title: "cooking", imagePath: "assets/cooking.jpg"),
  MagazineModel(title: "economy" , imagePath: "assets/economy.jpg"),
  MagazineModel(title: "health", imagePath: "assets/health.png"),
  MagazineModel(title:  "knowledge", imagePath: "assets/knowledge.jpg"),
  MagazineModel(title: "politics", imagePath: "assets/politics.jpg"),
  MagazineModel(title: "tecnology", imagePath:"assets/tecnology.jpg"),
  MagazineModel(title: "tourism", imagePath: "assets/tourism.jpg"),
  MagazineModel(title: "women", imagePath:"assets/women.jpg"),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Title",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeScreenTitles("News"),
              const SizedBox(width: 8),
              HomeScreenTitles("Magazines"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ( BuildContext context, int index) => HomeTile(imagePath: magazines[index].imagePath,
                  text: magazines[index].title),
              itemCount: magazines.length,
            ),
          ),
        ],
      ),
    );
  }


}
