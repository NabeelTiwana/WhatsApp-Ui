import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/contact/contactscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images": "assets/images/boy.jpg",
      "name": "NAbeel",
      "message": "Ramzan Mubarik",
      "time": "05:45 pm",
      "unread": "7",
    },
    {
      "images": "assets/images/boy1.jpg",
      "name": "Arshman",
      "message": "Hi",
      "time": "07:30 pm",
      "unread": "1",
    },
    {
      "images": "assets/images/boy2.jpg",
      "name": "Umair",
      "message": "Salam",
      "time": "02:10 am",
      "unread": "3",
    },
    {
      "images": "assets/images/boy3.jpg",
      "name": "Umar",
      "message": "Iam weating for you",
      "time": "12:30 am",
      "unread": "5",
    },
    {
      "images": "assets/images/boy4.jpg",
      "name": "Zain",
      "message": "Iam Student",
      "time": "11:20 pm",
      "unread": "2",
    },
    {
      "images": "assets/images/boy5.jpg",
      "name": "Zohaib",
      "message": "Still error",
      "time": "01:20 pm",
      "unread": "6",
    },
    {
      "images": "assets/images/boy6.jpg",
      "name": "Hamza",
      "message": "Still error",
      "time": "10:40 am",
      "unread": "4",
    },
    {
      "images": "assets/images/boy7.jpg",
      "name": "Shahid",
      "message": "Whatever",
      "time": "09:40 am",
      "unread": "1",
    },
    {
      "images": "assets/images/boy8.jpg",
      "name": "Ali",
      "message": "Iam software engineer",
      "time": "09:26 am",
      "unread": "7",
    },
    {
      "images": "assets/images/boy9.jpg",
      "name": "Usman",
      "message": "Iam Busy",
      "time": "08:00 pm",
      "unread": "4",
    },
    {
      "images": "assets/images/boy10.jpg",
      "name": "Kashif",
      "message": "Wait",
      "time": "03:45 pm",
      "unread": "2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.customText(
                    text: arrContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.customText(
                    text: arrContent[index]["message"].toString(),
                    height: 14,
                  ),
                  trailing: Column(
                    spacing: 5,
                    children: [
                      UiHelper.customText(
                        text: arrContent[index]["time"].toString(),
                        height: 14,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.green,
                        child: UiHelper.customText(
                          text: arrContent[index]["unread"].toString(),
                          height: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF008665),
        onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactScreen()));
        },
        child: Image.asset("assets/images/chatbutton.png"),
      ),
    );
  }
}
