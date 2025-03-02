import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/otp/otpscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "Pakistan";

  List<String> countries = [
    "Pakistan",
    "India",
    "United States",
    "United Kingdom",
    "Canada",
    "Australia",
    "Germany",
    "France",
    "Italy",
    "Spain",
    "China",
    "Japan",
    "South Korea",
    "Russia",
    "Brazil",
    "Mexico",
    "South Africa",
    "Argentina",
    "New Zealand",
    "Turkey",
    "Saudi Arabia",
    "United Arab Emirates",
    "Iran",
    "Indonesia",
    "Malaysia",
    "Thailand",
    "Vietnam",
    "Philippines",
    "Bangladesh",
    "Sri Lanka",
    "Egypt",
    "Nigeria",
    "Kenya",
    "Ghana",
    "Ethiopia",
    "Greece",
    "Netherlands",
    "Sweden",
    "Norway",
    "Denmark",
    "Finland",
    "Switzerland",
    "Belgium",
    "Portugal",
    "Poland",
    "Ukraine",
    "Czech Republic",
    "Hungary",
    "Austria",
    "Singapore",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: UiHelper.customText(
                text: "Enter your phone number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: 'WhatsApp will need to verify your phone',
              height: 16,
            ),
            UiHelper.customText(
              text: 'number. Carrier charges may apply.',
              height: 16,
            ),
            UiHelper.customText(
              text: ' What’s my number?',
              height: 16,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: DropdownButtonFormField(
                items:
                    countries.map((String country) {
                      return DropdownMenuItem(
                        value: country,
                        child: Text(country.toString()),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedcountry = value!;
                  });
                },
                value: selectedcountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: " +92",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 240,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        onPress: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Phone Number'),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) =>
                  OtpScreen(phonenumber: phoneController.text.toString()),
        ),
      );
    }
  }
}
