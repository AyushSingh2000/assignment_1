import 'package:assignment_1/Screens/sub_pooja_screens/group_pooja.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../SpecialPuja/SpecialPuja.dart';
import '../../Widgets/CustomCards.dart';
import '../sub_pooja_screens/chadava.dart';
import '../sub_pooja_screens/home_havan.dart';
import '../sub_pooja_screens/home_pooja.dart';
import '../sub_pooja_screens/tithi_puja.dart';

class PujaPage extends StatefulWidget {
  const PujaPage({super.key});

  @override
  State<PujaPage> createState() => _PujaPageState();
}

class _PujaPageState extends State<PujaPage> {
  @override
  Widget build(BuildContext context) {
    const gradColor1 = '#5c0a2f';
    const gradColor2 = '#8C0944';

    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
          centerTitle: true,
          title: Text(
            "Puja Page",
            style: TextStyle(color: Colors.white),
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor(gradColor1),
                HexColor(gradColor2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ))),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the radius value as needed
                    ),
                  ),
                  hintText: "Search for Puja, Temple or Tithi",
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                  trailing: <Widget>[],
                );
              }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 10, bottom: 10),
            //   child: GestureDetector(
            //     child: Card(
            //       elevation: 12,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20.0),
            //       ),
            //       color: Colors.white,
            //       child: ClipRRect(
            //         borderRadius: const BorderRadius.only(
            //             topRight: Radius.circular(20),
            //             topLeft: Radius.circular(20),
            //             bottomLeft: Radius.circular(20),
            //             bottomRight: Radius.circular(20)),
            //         child: Image.asset(
            //           "assets/images/MahaPuja.png",
            //           fit: BoxFit.cover,
            //           width: double.infinity,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            CustomCard(
                headerImageUrl:
                    'https://www.learnreligions.com/thmb/ay_eU3pQHa6s3pcMv4dzPjtiJs8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/puja2015-56a483f33df78cf77282cb9a.jpg',
                title: 'Tithi Puja',
                subtitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TithiPuja()),
                  );
                }),
            CustomCard(
                headerImageUrl:
                    'https://media.npr.org/assets/img/2010/05/13/07_amar_20_2_0816_slide-a95e72632a7eff523dc7c441c9cb06d3c0d8a827.jpg',
                title: 'Chadava',
                subtitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chadava()),
                  );
                }),
            CustomCard(
                headerImageUrl:
                    'https://inventory.rudra-centre.org/static/images/blogs/GROUP+PUJA+COST+BENEFITS.jpg',
                title: 'Group Puja',
                subtitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GroupPooja()),
                  );
                }),
            CustomCard(
                headerImageUrl:
                    'https://i0.wp.com/www.smartpuja.com/blog/wp-content/uploads/2022/08/DOSH-NIVARAN-Birthday-Puja-7.jpg?resize=1024%2C571&ssl=1',
                title: 'Home Pujas',
                subtitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePooja()),
                  );
                }),
            CustomCard(
                headerImageUrl:
                    'https://i.ytimg.com/vi/hRJlF09EE2E/maxresdefault.jpg',
                title: 'Home Havan & Sraddhas',
                subtitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeHavan()),
                  );
                }),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Samasya Nirvan Pujas",
                style: TextStyle(
                    color: HexColor(gradColor1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SpecialPuja(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      )),
    );
  }
}
