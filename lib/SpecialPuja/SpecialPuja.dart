import 'package:flutter/material.dart';

class SpecialPuja extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaW7PU0dS0fo1-yWzdnhOpOd_zyIA7pt3VWOldB67YUA&s",
      "title": "Child Birth"
    },
    {
      "image": "https://temple.yatradham.org/Product/puja-rituals/puja-rituals_WiLPopR0_202403020952130.jpg",
      "title": "Relief"
    },
    {
      "image": "https://media.ptcnews.tv/wp-content/uploads/2024/media/media_files/1Q0BPOPE90pRYjHkfVqp.jpg",
      "title": "Black Magic"
    },{
      "image": "https://onlinetemple.com/wp-content/uploads/2021/07/Puja-for-Career-Finance.jpg",
      "title": "Finance\nFreedom"
    },
    {
      "image": "https://s3.amazonaws.com/RudraCentre/ProductImages/Puja/4011Puja-for-Finding-a-New-Job.jpg",
      "title": "Job Related"
    },
    {
      "image": "https://s3.amazonaws.com/RudraCentre/ProductImages/Puja/Puja-for-Success-in-Business.jpg",
      "title": "Business\nSuccess"
    },{
      "image": "https://99pandit.com/wp-content/uploads/2023/01/2-3.jpg",
      "title": "Marriage Related"
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQt-cQXJrvJ2_KzDf-uLJ36eru8QBH5ccJKfjjF3l-A&s",
      "title": "Exam\nClearance"
    },
    {
      "image": "https://i0.wp.com/farm8.staticflickr.com/7179/6987873048_4bc5c4926b.jpg",
      "title": "Land"
    },{
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEj0iY7_ANn8R2ZhqIHjRKzpL05ybB1IWjX4s1R-Giog&s",
      "title": "Health"
    },
    // Add more objects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      children: List.generate(
        data.length,
            (index) {
          return GridTile(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(data[index]['image']!),
                ),
                 SizedBox(height: 2),
                Text(data[index]['title']!),
              ],
            ),
          );
        },
      ),
    );
  }
}