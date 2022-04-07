// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/pages/RoomBooking.dart';
import 'package:login/pages/Profile.dart';
import 'package:login/pages/QuickServices.dart';
// import 'package:adobe_xd/pinned.dart';

// import 'package:login/RoomBooking2.dart';
import 'package:login/widgets/back_button.dart';

import 'video_widget.dart';

// import 'package:adobe_xd/page_link.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  Dashboard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        // margin: EdgeInsets.symmetric(
        //   horizontal: sizeConfig!.height(.03),
        // ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: NewButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RoomBooking())),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.left,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 40, left: 50),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(18.0),
                //       color: const Color(0xffffffff),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      width: width / 1.2,
                      // height: height / 4.0,
                      height: sizeConfig!.height(0.22),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(width: 1),
                        color: const Color(0xffffffff),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    'Your Hotel',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff465a54),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    // textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    'Melrose Hotel',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 22,
                                      color: const Color(0xff465a54),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    //textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    'at, Deritend, Birmingham B9 4AA, United Kingdom',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff465a54),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    // textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: sizeConfig!.height(0.075),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        border: Border.all(width: 1),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            '3',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'nights',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 10,
                                            color: const Color(0xff465a54),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'CHECK IN\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '13.01.2022',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: const Color(0xff060606),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 10,
                                            color: const Color(0xff465a54),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'CHECK OUT\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '15.01.2022',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: const Color(0xff060606),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: Container(
                    width: 410,
                    height: sizeConfig!.height(0.39),
                    child:
                        // VideoApp(),
                        Image.asset("assets/images/image5.jpg"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.black,
        // selectedLabelStyle:
        //     TextStyle(fontWeight: FontWeight.bold, fontSize: text * 15),

        // unselectedItemColor: Colors.black,
        // iconSize: 30,

        // elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Icon(Icons.home)),
            label: ('Dashboard'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuickServices()),
                  );
                },
                child: Icon(
                  Icons.room_service_outlined,
                  color: Colors.black,
                ),
              ),
              label: ('Service'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuickServices()),
                );
              },
              child: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
            label: ('Message'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            label: ('Profile'),
            backgroundColor: Colors.white,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        backgroundColor: const Color(0xffA67B5B),
        unselectedItemColor: Colors.black,
        iconSize: 30,

        elevation: 5,
      ),
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qnjar8 =
    '<svg viewBox="44.0 238.1 326.0 1.0" ><path transform="translate(-2407.01, -825.0)" d="M 2451 1063.0947265625 L 2777.01708984375 1063.0947265625" fill="none" fill-opacity="0.22" stroke="#7b7575" stroke-width="0.5" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
