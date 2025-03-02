import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  final String phonenumber;
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  OtpScreen({required this.phonenumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            UiHelper.customText(
              text: 'Verifying your number',
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: 'You’ve tried to register +92${phonenumber}',
              height: 15,
            ),
            UiHelper.customText(
              text: 'recently. Wait before requesting an sms or a call.',
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: 'with your code ', height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                    text: 'Wrong number?',
                    height: 15,
                    color: Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(otp1Controller),
                UiHelper.customContainer(otp2Controller),
                UiHelper.customContainer(otp3Controller),
                UiHelper.customContainer(otp4Controller),
                UiHelper.customContainer(otp5Controller),
                UiHelper.customContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: 'Didn’t receive code?',
              height: 14,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(onPress: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
