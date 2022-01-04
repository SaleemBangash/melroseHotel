// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:login/pages/RoomBooking2.dart';

// import 'package:login/SignupPage.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:login/Menu1.dart';
import 'package:login/widgets/background_image.dart';
//import 'package:login/login.dart';
//import './Login.dart';
import 'package:login/pages/LoginPage.dart';

// import 'package:adobe_xd/page_link.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class PopupScreen extends StatelessWidget {
  PopupScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset("assets/images/image6.jpg"),
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: const Color(0xffb5cedf),
          body: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    'Welcome to the',
                    style: TextStyle(
                      // fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    'Melrose Hotel',
                    style: TextStyle(
                      // fontFamily: 'Segoe UI',
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120, top: 550),
          child: ElevatedButton(
            child: Text(
              "Login",
              style: TextStyle(
                  // fontSize: text * 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
              // shadowColor: Colors.black,
              minimumSize: Size(150, 30),
              maximumSize: Size(160, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),

              //StadiumBorder(),

              backgroundColor: const Color(0xffA67B5B),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ),
      ],
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
