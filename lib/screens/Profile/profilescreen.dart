import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/screens/home/homescreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

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
            GestureDetector(
              onTap: () {
                _openButtom(context);
              },
              child:
                  pickedimage == null
                      ? CircleAvatar(
                        radius: 70,
                        backgroundColor: Color(0XFFD9D9D9),
                        child: Image.asset(
                          'assets/images/camera.png',
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )
                      : CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(pickedimage!),
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
                SizedBox(width: 10),
                Image.asset('assets/images/happyface .png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        onPress: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openButtom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      Navigator.pop(context);
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedimage = tempImage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    }
  }
}
