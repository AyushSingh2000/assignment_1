import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomCard extends StatelessWidget {
  final String headerImageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const CustomCard({
    required this.headerImageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    const gradColor2 = '#8C0944';
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.network(
                  headerImageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      color: HexColor(
                          gradColor2), // Assuming gradColor1 is a primary color
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
