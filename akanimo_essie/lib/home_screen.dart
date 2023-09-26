import 'package:flutter/material.dart';
import 'package:akanimo_essie/my_second_screen.dart';


class HomePage extends StatelessWidget {
  String phoneNumber;
  String emailAddress;

  HomePage ({
    this.phoneNumber = "+234 8138 098 453",
    this.emailAddress = "Akwealth47@gmail.com",
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: Image.network(
                  "https://cdn0.iconfinder.com/data/icons/users-android-l-lollipop-icon-pack/24/user-512.png"),
            ),
            SizedBox(
              height: 15,
            ),
            const Text(
              'Wealth Essien',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'MOBILE DEVELOPER | PRODUCT DESIGNER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 0.9,
              margin: EdgeInsets.symmetric(
                horizontal: 150,
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 350,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.call, color: Colors.blueGrey),
                  SizedBox(width: 40),
                  Text(
                    "+234 8138 098 453",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 350,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.email, color: Colors.blueGrey),
                  SizedBox(width: 40),
                  Text(
                    "Akwealth47@gmail.com",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>
                      SecondScreen())
                  );
            },
            child: Text("Go To Next Screen"))
          ],
        ),
      ),
    );
  }
}