import 'package:flutter/material.dart';

import '../Rituals/tithi_ritual.dart';

class TithiPuja extends StatefulWidget {
  const TithiPuja({Key? key}) : super(key: key);

  @override
  State<TithiPuja> createState() => _TithiPujaState();
}

class _TithiPujaState extends State<TithiPuja> {
  final List<String> texts = [
    "Card 1: Specific Puja or ritual",
    "Card 2: Description or details",
    "Card 3: Description or details",
    "Card 4: Description or details",
    "Card 5: Description or details",
    "Card 6: Description or details",
    "Card 7: Description or details",
    "Card 8: Description or details",
    "Card 9: Description or details",
    "Card 10: Description or details",
    "Card 11: Description or details",
    "Card 12: Description or details",
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tithi Puja"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.network(
              'https://www.learnreligions.com/thmb/ay_eU3pQHa6s3pcMv4dzPjtiJs8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/puja2015-56a483f33df78cf77282cb9a.jpg',
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Tithi Puja",
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
                      builder: (context) => TithiDetailPage(detail: text),
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
