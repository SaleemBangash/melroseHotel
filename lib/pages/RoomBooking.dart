// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:login/pages/LoginPage.dart';
import 'package:login/pages/RoomBooking2.dart';
import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/button.dart';

// import 'package:adobe_xd/pinned.dart';

// import 'package:login/utils/size_config.dart';

// import 'package:adobe_xd/page_link.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class RoomBooking extends StatefulWidget {
  RoomBooking({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomBooking> createState() => _RoomBookingState();
}

class _RoomBookingState extends State<RoomBooking> {
  bool isChecked = false;
  bool onChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 290, top: 20),
                  child: NewButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage())),
                  )),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'ROOM\nBOOKING',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                  // textHeightBehavior:
                  //     TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Book your desire room for your \npleasure',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 180, left: 120),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(25.0),
              //       color: const Color(0xff465a54),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 240, left: 20),
              //   child: Container(
              //     width: 70,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(25.0),
              //       color: const Color(0xff465a54),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Number of People',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: const Color(0xffA67B5B),
                                ),
                                child: Center(
                                    child: Text(
                                  "0-9",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: const Color(0xffA67B5B),
                                ),
                                child: Center(
                                    child: Text(
                                  "Child",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40, top: 10),
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: const Color(0xffA67B5B),
                                ),
                                child: Center(
                                    child: Text(
                                  "Elder",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: 330,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Number of Rooms',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: const Color(0xffA67B5B),
                                ),
                                child: Center(
                                    child: Text(
                                  "0-9",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 360, left: 120),
              //   child: Text(
              //     'Number of Room',
              //     style: TextStyle(
              //       fontFamily: 'Segoe UI',
              //       fontSize: 20,
              //       color: const Color(0xdbf7f7f7),
              //       fontWeight: FontWeight.w300,
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),

              Padding(
                padding: EdgeInsets.only(right: 150, top: 20),
                child: Text(
                  'Do you have Dog?',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                                onChecked = false;
                                // onChecked = false;
                              });
                            },
                          ),
                          Text(
                            'No',
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.black),
                          ),
                        ],
                      ),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: const Color(0xfff7f7f7),
                      //     border: Border.all(
                      //         width: 2.0, color: const Color(0xff465a54)),
                      //   ),
                      // ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: onChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                onChecked = value!;
                                isChecked = false;
                                // onChecked = false;
                              });
                            },
                          ),
                          Text(
                            'Yes',
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.black),
                          ),
                        ],
                      ),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: const Color(0xfff7f7f7),
                      //     border: Border.all(
                      //         width: 2.0, color: const Color(0xff465a54)),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                //  margin: EdgeInsets.symmetric(vertical: sizeConfig!.height(.01)),
                height: 30,
                width: 150,
                child: MyButton(
                  title: "Next",
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RoomBooking2())),
                ),
              )
              // ElevatedButton(
              //   child: Text(
              //     "Next",
              //     style: TextStyle(
              //         // fontSize: text * 15,
              //         color: Colors.black,
              //         fontWeight: FontWeight.bold),
              //   ),
              //   style: TextButton.styleFrom(
              //     // shadowColor: Colors.black,
              //     minimumSize: Size(150, 30),
              //     maximumSize: Size(160, 30),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(16)),

              //     //StadiumBorder(),

              //     backgroundColor: const Color(0xff668079),
              //   ),
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => RoomBooking()));
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
