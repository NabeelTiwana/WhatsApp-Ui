import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "images": "assets/images/boy.jpg",
      "name": "Nabeel",
      "calltime": "15 min ago",
    },
    {
      "images": "assets/images/boy1.jpg",
      "name": "Arshman",
      "calltime": "30 min ago",
    },
    {
      "images": "assets/images/boy2.jpg",
      "name": "Umair",
      "calltime": "45 min ago",
    },
    {
      "images": "assets/images/boy3.jpg",
      "name": "Umar",
      "calltime": "1 hour ago",
    },
    {
      "images": "assets/images/boy4.jpg",
      "name": "Zain",
      "calltime": "2 hours ago",
    },
    {
      "images": "assets/images/boy5.jpg",
      "name": "Zohaib",
      "calltime": "3 hours ago",
    },
    {
      "images": "assets/images/boy6.jpg",
      "name": "Hamza",
      "calltime": "4 hours ago",
    },
    {
      "images": "assets/images/boy7.jpg",
      "name": "Shahid",
      "calltime": "5 hours ago",
    },
    {
      "images": "assets/images/boy8.jpg",
      "name": "Ali",
      "calltime": "6 hours ago",
    },
    {
      "images": "assets/images/boy9.jpg",
      "name": "Usman",
      "calltime": "7 hours ago",
    },
    {
      "images": "assets/images/boy10.jpg",
      "name": "Kashif",
      "calltime": "8 hours ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(text: "Recent", height: 18),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: callContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      callContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.customText(
                    text: callContent[index]["name"].toString(),
                    height: 20,
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.customText(
                    text: callContent[index]["calltime"].toString(),
                    height: 15,
                  ),
                  trailing: Icon(Icons.phone, color: Color(0XFF008665)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
