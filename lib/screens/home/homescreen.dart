import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/calls/callsscreen.dart';
import 'package:whatsapp_clone/screens/home/camera/camerascreen.dart';
import 'package:whatsapp_clone/screens/home/chats/chatscreen.dart';
import 'package:whatsapp_clone/screens/home/status/statusscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 50,
          title: UiHelper.customText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
            fontweight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Search.png'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
