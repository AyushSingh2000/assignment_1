import 'package:flutter/material.dart';

class TithiDetailPage extends StatelessWidget {
  final List<String> seva = [
    "Card 1: Daan Seva 1",
    "Card 2: Daan Seva 2",
    "Card 3: Daan Seva 3",

    // Add more items as needed
  ];
  final String detail;

  TithiDetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              detail,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ...seva.map((seva) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    seva,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
