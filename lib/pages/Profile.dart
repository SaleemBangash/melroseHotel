// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';

import 'package:login/pages/Invoice.dart';
import 'package:login/pages/QuickServices.dart';
import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/bottom_bar.dart';
import 'package:login/widgets/button.dart';

import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

class Profile extends StatelessWidget {
  Profile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: NewButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar())),
                )),
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: sizeConfig!.height(0.18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        // image: DecorationImage(
                        //   image:
                        //       const AssetImage('assets/images/john.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/john.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'James Rowan',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        'Room Details',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                            ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: sizeConfig!.height(0.06),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(width: 1),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Room No 10',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.black,
                                    ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: sizeConfig!.height(0.06),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(width: 1),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'First Floor',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.black,
                                    ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: sizeConfig!.height(0.06),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(width: 1),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Double Bed',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.black,
                                    ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: SizedBox(
                        //  margin: EdgeInsets.symmetric(vertical: sizeConfig!.height(.01)),
                        height: 30,
                        width: 150,
                        child: MyButton(
                          title: "Your Invoice",
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Invoice())),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xiwas =
    '<svg viewBox="37.3 52.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1123.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
