import 'package:flutter/material.dart';

import '../Rituals/home_pooja_ritual.dart';

class HomePooja extends StatefulWidget {
  const HomePooja({Key? key}) : super(key: key);

  @override
  State<HomePooja> createState() => _HomePoojaState();
}

class _HomePoojaState extends State<HomePooja> {
  final List<String> texts = [
    "Card 1: Description or details",
    "Card 2: Description or details",
    "Card 3: Description or details",
    "Card 4: Description or details",
    "Card 1: Description or details",
    "Card 2: Description or details",
    "Card 3: Description or details",
    "Card 4: Description or details",
    "Card 1: Description or details",
    "Card 2: Description or details",
    "Card 3: Description or details",
    "Card 4: Description or details",
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pujas"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.network(
              'https://i0.wp.com/www.smartpuja.com/blog/wp-content/uploads/2022/08/DOSH-NIVARAN-Birthday-Puja-7.jpg?resize=1024%2C571&ssl=1',
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Home Pujas",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ...texts.map((text) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePujaDetailPage(detail: text),
                    ),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
