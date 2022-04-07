// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/widgets/back_button.dart';
import '../main.dart';
import './Menu1.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu2 extends StatelessWidget {
  Menu2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Stack(
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
                                            builder: (context) => Menu1(),
                                          )))),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.add_alert_rounded,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 80),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(46.0),
                            child: Image.asset(
                              "assets/images/image8.jpg",
                              width: 230.0,
                              height: sizeConfig!.height(0.44),
                              fit: BoxFit.fill,

                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: sizeConfig!.height(0.40)),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ui.ImageFilter.blur(
                                    sigmaX: 30.0, sigmaY: 20.0),
                                child: Container(
                                  height: height / 1.75,
                                  width: width / 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                    //color: Colors.transparent,
                                    border: Border.all(
                                        width: 2.0, color: Colors.black),
                                  ),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Text(
                                        'Rice noodles with egg, choy, red chili\nand green onion.',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text.rich(
                                              TextSpan(
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xff0a0a0a),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '300 g.',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '/',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '530kcal.  ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                              '1 portion',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, right: 250),
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Price\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\$ 7.50',
                                              style: TextStyle(
                                                fontSize: 26,
                                                color: const Color(0xff060606),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 50, left: 25),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () => Menu2(),
                                                ),
                                              ],
                                              child: Container(
                                                width: 160,
                                                height:
                                                    sizeConfig!.height(0.06),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                  border: Border.all(width: 1),
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 20,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Add To Cart',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline2!
                                                            .copyWith(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10),
                                                        child: Icon(
                                                          Icons
                                                              .add_circle_outline,
                                                          size: 25,
                                                          color: Colors.black,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yp7p8 =
    '<svg viewBox="38.3 51.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1287.22, -1124.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
