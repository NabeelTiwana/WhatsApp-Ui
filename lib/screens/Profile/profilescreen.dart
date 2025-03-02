import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            UiHelper.customText(
              text: 'Profile info',
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: 'Please provide your name and an optional',
              height: 15,
            ),
            UiHelper.customText(text: 'profile photo', height: 15),
            SizedBox(height: 30),
            CircleAvatar(
              radius: 70,
              backgroundColor: Color(0XFFD9D9D9),
              child: Image.asset(
                'assets/images/camera.png',
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
           Image.asset('assets/images/happyface .png')
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(onPress: (){}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
