// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:login/main.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:login/pages/Menu2.dart';
// import 'package:login/main.dart';
// import 'package:login/utils/app_theme.dart';
import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/bottom_bar.dart';
//import 'package:Profile.dart';
import './Reservation.dart';
import 'package:adobe_xd/page_link.dart';
import './StaffHelp.dart';
import './Dashboard.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Profile.dart';

class QuickServices extends StatefulWidget {
  QuickServices({
    Key? key,
  }) : super(key: key);

  @override
  State<QuickServices> createState() => _QuickServicesState();
}

class _QuickServicesState extends State<QuickServices> {
  // int _currentIndex = 0;
  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          // height: sizeConfig!.height(.9),
          child: Container(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: NewButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomBar())),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.search),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 20),
                        child: Text(
                          'Quick\nServices',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 410,
                          height: sizeConfig!.height(0.38),
                          child: Image.asset("assets/images/image7.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          'Select your Service:',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          width: 80,
                                          height: sizeConfig!.height(0.10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                                color: Colors.black, width: 1),
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          StaffHelp(),
                                                    ));
                                              },
                                              child: Image.asset(
                                                  "assets/images/cleaning.png"),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Staff Help',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          width: 80,
                                          height: sizeConfig!.height(0.10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                                color: Colors.black, width: 1),
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Reservation(),
                                                    ));
                                              },
                                              child: Image.asset(
                                                  "assets/images/drink.png"),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Refreshement',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          width: 80,
                                          height: sizeConfig!.height(0.10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                                color: Colors.black, width: 1),
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          StaffHelp(),
                                                    ));
                                              },
                                              child: Image.asset(
                                                  "assets/images/book.png"),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Books',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
    // bottomNavigationBar: BottomNavigationBar(
    //   // height: MediaQuery.of(context).size.height / 0.1,
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: const Color(0xffA67B5B),
    //   selectedItemColor: Colors.black,
    //   unselectedItemColor: Colors.black,
    //   selectedLabelStyle:
    //       TextStyle(fontWeight: FontWeight.bold, fontSize: text * 15),

    //   iconSize: 30,
    //   elevation: 5,
    //   currentIndex: 1,
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //           onTap: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(builder: (context) => Dashboard()),
    //             );
    //           },
    //           child: Icon(Icons.home)),
    //       label: 'Dashboard',
    //       backgroundColor: Colors.white,
    //     ),
    //     BottomNavigationBarItem(
    //         icon: InkWell(
    //           onTap: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(builder: (context) => QuickServices()),
    //             );
    //           },
    //           child: Icon(
    //             Icons.room_service_outlined,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: ('Service'),
    //         backgroundColor: Colors.white),
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => QuickServices()),
    //           );
    //         },
    //         child: Icon(
    //           Icons.message,
    //           color: Colors.black,
    //         ),
    //       ),
    //       label: ('Message'),
    //       backgroundColor: Colors.white,
    //     ),
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => Profile()),
    //           );
    //         },
    //         child: Icon(
    //           Icons.person,
    //           color: Colors.black,
    //         ),
    //       ),
    //       label: ('Profile'),
    //       backgroundColor: Colors.white,
    //     ),
    //   ],
    //   // selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40),
    //   // selectedItemColor: Colors.amberAccent,
    //   // // type: BottomNavigationBarType.shifting,
    //   // // currentIndex: _selectedIndex,
    //   // //selectedItemColor: Colors.black,
    //   // unselectedIconTheme: IconThemeData(
    //   //   color: Colors.deepOrangeAccent,
    //   // )
    //   // iconSize: 40,
    //   // onTap: (value) => Dashboard(),
    //   //   // elevation: 5
    //   //),
    // ));
  }
}

const String _svg_qrwz4h =
    '<svg viewBox="59.0 208.0 296.0 210.0" ><defs><pattern id="image" patternUnits="userSpaceOnUse" width="2992.0" height="2992.0"><image xlink:href="assets/images/image7.jpg" x="0" y="0" width="2992.0" height="2992.0" /></pattern></defs><path transform="translate(59.0, 125.0)" d="M 0 292.9996337890625 L 0 82.99980163574219 L 295.9998168945312 82.99980163574219 L 295.9998168945312 292.9996337890625 L 0 292.9996337890625 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xiwas =
    '<svg viewBox="37.3 52.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1123.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
