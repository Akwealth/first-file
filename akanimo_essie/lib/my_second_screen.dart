import 'package:flutter/material.dart';
import 'package:akanimo_essie/home_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(hintText: "Phone Number"),
            ),
            TextField(
              controller: _emailAddressController,
              decoration: InputDecoration(hintText: "Email Address"),
            ),

            SizedBox(height: 30,),

            ElevatedButton(onPressed: () {
              print(_phoneNumberController.text);
              print(_emailAddressController.text);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HomePage(
                        phoneNumber: _phoneNumberController.text,
                        emailAddress: _emailAddressController.text,),
                ),
              );
            },
              child: Text("Save and Exit"),),
          ],
        ),
      ),
    );
  }
}