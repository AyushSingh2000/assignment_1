import 'package:flutter/material.dart';

class HomePujaDetailPage extends StatelessWidget {
  final String detail;

  const HomePujaDetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          detail,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
