// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/main.dart';
import 'package:login/pages/RideBooking.dart';
import 'package:login/widgets/back_button.dart';
import './Reservation.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reservations extends StatelessWidget {
  Reservations({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: sizeConfig!.height(0.03)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: NewButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reservation(),
                        )))),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  'Reservations',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeConfig!.height(0.04)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(26.0),
                              child: Image.asset(
                                "assets/images/image14.jpg",
                                width: 180.0,
                                height: sizeConfig!.height(0.16),
                                fit: BoxFit.fill,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29),
                          child: Text(
                            'Reservation \nfor Restaurants',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(26.0),
                              child: Image.asset(
                                "assets/images/image15.jpg",
                                width: 180.0,
                                height: sizeConfig!.height(0.16),
                                fit: BoxFit.fill,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29),
                          child: Text(
                            'Call A Taxi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(26.0),
                              child: Image.asset(
                                "assets/images/image16.jpg",
                                width: 180.0,
                                height: sizeConfig!.height(0.16),
                                fit: BoxFit.fill,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29),
                          child: Text(
                            'Booking A Spa',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black),
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

const String _svg_xiwas =
    '<svg viewBox="37.3 52.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1123.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
