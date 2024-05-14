import 'package:flutter/material.dart';

import '../Rituals/group_detail.dart';

class GroupPooja extends StatefulWidget {
  const GroupPooja({Key? key}) : super(key: key);

  @override
  State<GroupPooja> createState() => _GroupPoojaState();
}

class _GroupPoojaState extends State<GroupPooja> {
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
        title: Text("Group Pujas"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.network(
              'https://inventory.rudra-centre.org/static/images/blogs/GROUP+PUJA+COST+BENEFITS.jpg',
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Group Pujas",
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
                      builder: (context) => GroupDetailPage(detail: text),
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
