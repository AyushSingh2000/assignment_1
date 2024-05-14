import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  final List<Map<String, String>> selectedSevas;
  final int totalPrice;

  BookingPage({Key? key, required this.selectedSevas, required this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selected Sevas:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ...selectedSevas.map((seva) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "${seva['title']} - ${seva['price']}",
                    style: TextStyle(fontSize: 16.0),
                  ),
                )),
            SizedBox(height: 20.0),
            Text(
              "Total Price: ₹$totalPrice",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
