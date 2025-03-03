import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "images": "assets/images/boy.jpg",
      "name": "Nabeel",
      "statustime": "15 min ago",
    },
    {
      "images": "assets/images/boy1.jpg",
      "name": "Arshman",
      "statustime": "30 min ago",
    },
    {
      "images": "assets/images/boy2.jpg",
      "name": "Umair",
      "statustime": "45 min ago",
    },
    {
      "images": "assets/images/boy3.jpg",
      "name": "Umar",
      "statustime": "1 hour ago",
    },
    {
      "images": "assets/images/boy4.jpg",
      "name": "Zain",
      "statustime": "2 hours ago",
    },
    {
      "images": "assets/images/boy5.jpg",
      "name": "Zohaib",
      "statustime": "3 hours ago",
    },
    {
      "images": "assets/images/boy6.jpg",
      "name": "Hamza",
      "statustime": "4 hours ago",
    },
    {
      "images": "assets/images/boy7.jpg",
      "name": "Shahid",
      "statustime": "5 hours ago",
    },
    {
      "images": "assets/images/boy8.jpg",
      "name": "Ali",
      "statustime": "6 hours ago",
    },
    {
      "images": "assets/images/boy9.jpg",
      "name": "Usman",
      "statustime": "7 hours ago",
    },
    {
      "images": "assets/images/boy10.jpg",
      "name": "Kashif",
      "statustime": "8 hours ago",
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
              UiHelper.customText(text: "StatUs", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/avatars.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0XFF008665),
                      radius: 10,
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.customText(text: 'My Status', height: 20),
            subtitle: UiHelper.customText(
              text: 'Tap to add status update',
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.customText(text: 'Recent Update', height: 15),
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: statusContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      statusContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.customText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Colors.black
                  ),
                  subtitle: UiHelper.customText(
                    text: statusContent[index]["statustime"].toString(),
                    height: 14,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
