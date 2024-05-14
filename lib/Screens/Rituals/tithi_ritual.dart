import 'package:flutter/material.dart';

import '../Bookings/final_booking.dart';

class TithiDetailPage extends StatefulWidget {
  final List<Map<String, String>> seva = [
    {"title": "Daan Seva 1", "price": "100"},
    {"title": "Daan Seva 2", "price": "200"},
    {"title": "Daan Seva 3", "price": "300"},

    // Add more items as needed
  ];
  final String detail;

  TithiDetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  _TithiDetailPageState createState() => _TithiDetailPageState();
}

class _TithiDetailPageState extends State<TithiDetailPage> {
  List<Map<String, String>> selectedSevas = [];

  void toggleSelection(Map<String, String> sevaItem) {
    setState(() {
      if (selectedSevas.contains(sevaItem)) {
        selectedSevas.remove(sevaItem);
      } else {
        selectedSevas.add(sevaItem);
      }
    });
  }

  void handleButtonPress() {
    int totalPrice =
        selectedSevas.fold(0, (sum, item) => sum + int.parse(item["price"]!));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookingPage(
          selectedSevas: selectedSevas,
          totalPrice: totalPrice,
        ),
      ),
    );
  }

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
              widget.detail,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ...widget.seva.map((sevaItem) {
            bool isSelected = selectedSevas.contains(sevaItem);
            return GestureDetector(
              onTap: () => toggleSelection(sevaItem),
              child: Card(
                color: isSelected
                    ? Colors.blueAccent.withOpacity(0.5)
                    : Colors.white,
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sevaItem["title"]!,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      Text(
                        "₹${sevaItem["price"]}",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: handleButtonPress,
              child: Text("Proceed"),
            ),
          ),
        ],
      ),
    );
  }
}
