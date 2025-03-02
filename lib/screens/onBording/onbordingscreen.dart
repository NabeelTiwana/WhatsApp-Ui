import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/login/loginscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OnBordingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image 1.png'),
            SizedBox(height: 20),
            UiHelper.customText(
              text: 'Welcome to WhatsApp',
              height: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: 'Read out', height: 14),
                UiHelper.customText(
                  text: ' Privacy Policy ',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                UiHelper.customText(
                  text: 'Tap "Agree and continue"',
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: 'to accept the', height: 14),
                UiHelper.customText(
                  text: ' Teams of Service.',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        onPress: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
