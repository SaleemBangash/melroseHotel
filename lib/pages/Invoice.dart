// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/widgets/back_button.dart';
import '../widgets/bottom_bar.dart';
import './Profile.dart';
import 'package:adobe_xd/page_link.dart';
import './Invoice2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Invoice extends StatelessWidget {
  Invoice({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: NewButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBar(),
                        )))),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/image3.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Text(
                'INVOICE',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Discription',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text(
                        'Rate',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      'Qty',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 11,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Line Total',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Drinks',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        '\$/150',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$/150',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Rent',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        '\$/100',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$/100',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Room Service',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        '\$/100',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$/100',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Text(
                          'SubTotal',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '\$/350',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            'Tax',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '\$/50',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '\$/400',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Text(
                          'Amount Paid',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '\$/0.0',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            'Amount(Due) GDP',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '\$/400',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_duq3jw =
    '<svg viewBox="37.3 53.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1122.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s78dx4 =
    '<svg viewBox="24.0 356.0 366.0 1.0" ><path transform="translate(-2420.0, -1664.0)" d="M 2444 2020 L 2810 2020" fill="#465a54" stroke="#707070" stroke-width="0.5" stroke-dasharray="2 2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_whltk =
    '<svg viewBox="24.0 420.0 366.0 1.0" ><path transform="translate(-2420.0, -1600.0)" d="M 2444 2020 L 2810 2020" fill="#465a54" stroke="#707070" stroke-width="0.5" stroke-dasharray="2 2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j785u0 =
    '<svg viewBox="24.0 553.0 366.0 1.0" ><path transform="translate(-2420.0, -1467.0)" d="M 2444 2020 L 2810 2020" fill="#465a54" stroke="#707070" stroke-width="0.5" stroke-dasharray="2 2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lod937 =
    '<svg viewBox="24.0 611.0 366.0 1.0" ><path transform="translate(-2420.0, -1409.0)" d="M 2444 2020 L 2810 2020" fill="#465a54" stroke="#707070" stroke-width="0.5" stroke-dasharray="2 2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
