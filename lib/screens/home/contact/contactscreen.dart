import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactContent = [
      {"images": "assets/images/boy.jpg", "name": "Nabeel", "status": "Busy"},
      {
        "images": "assets/images/boy1.jpg",
        "name": "Arshman",
        "status": "Available",
      },
      {
        "images": "assets/images/boy2.jpg",
        "name": "Umair",
        "status": "At the gym",
      },
      {
        "images": "assets/images/boy3.jpg",
        "name": "Umar",
        "status": "Working...",
      },
      {
        "images": "assets/images/boy4.jpg",
        "name": "Zain",
        "status": "In a meeting",
      },
      {
        "images": "assets/images/boy5.jpg",
        "name": "Zohaib",
        "status": "Sleeping 😴",
      },
      {"images": "assets/images/boy6.jpg", "name": "Hamza", "status": "Online"},
      {
        "images": "assets/images/boy7.jpg",
        "name": "Shahid",
        "status": "On vacation 🌴",
      },
      {"images": "assets/images/boy8.jpg", "name": "Ali", "status": "At work"},
      {
        "images": "assets/images/boy9.jpg",
        "name": "Usman",
        "status": "Feeling great!",
      },
      {
        "images": "assets/images/boy10.jpg",
        "name": "Kashif",
        "status": "Can't talk now",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          text: "Selected Contect",
          height: 14,
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemCount: contactContent.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                contactContent[index]['images'].toString(),
              ),
            ),
            title: UiHelper.customText(
              text: contactContent[index]['name'].toString(),
              height: 20,
              color: Colors.black,
            ),
            subtitle: UiHelper.customText(
              text: contactContent[index]['status'].toString(),
              height: 14,
            ),
          );
        },
      ),
    );
  }
}
