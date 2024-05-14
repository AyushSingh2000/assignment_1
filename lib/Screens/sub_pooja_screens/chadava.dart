import 'package:flutter/material.dart';

import '../Rituals/chadava_ritual.dart';

class Chadava extends StatefulWidget {
  const Chadava({Key? key}) : super(key: key);

  @override
  State<Chadava> createState() => _ChadavaState();
}

class _ChadavaState extends State<Chadava> {
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
        title: Text("Chadava"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.network(
              'https://media.npr.org/assets/img/2010/05/13/07_amar_20_2_0816_slide-a95e72632a7eff523dc7c441c9cb06d3c0d8a827.jpg',
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Chadava",
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
                      builder: (context) => ChadavDetailPage(detail: text),
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
