// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/pages/Reservation.dart';
import 'package:login/widgets/back_button.dart';
import '../main.dart';
import './RideBooking.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecreationalPlaces extends StatelessWidget {
  RecreationalPlaces({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: NewButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reservation(),
                        )))),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                    ),
                    child: Text(
                      'Places to visit',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      'Visit some incredible places and make beautiful memories in London.\nHere are some fascinating places to visit when you are in London.\nClick on Buy Tickets to purchase tickets on cheap rates.  ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Container(
                          width: 170,
                          height: sizeConfig!.height(0.21),
                          child: Column(
                            children: [
                              Image.asset("assets/images/image11.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Buckingham Palace",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 50),
                        child: Container(
                          width: 90,
                          height: sizeConfig!.height(0.04),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            "Buy Tickets",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black, fontSize: 12),
                          )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Container(
                          width: 170,
                          height: sizeConfig!.height(0.21),
                          child: Column(
                            children: [
                              Image.asset("assets/images/image12.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "British Museum",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 50),
                        child: Container(
                          width: 90,
                          height: sizeConfig!.height(0.04),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            "Buy Tickets",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black, fontSize: 12),
                          )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Container(
                          width: 170,
                          height: sizeConfig!.height(0.21),
                          child: Column(
                            children: [
                              Image.asset("assets/images/image13.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Windsor Castle",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 50),
                        child: Container(
                          width: 90,
                          height: sizeConfig!.height(0.04),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            "Buy Tickets",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black, fontSize: 12),
                          )),
                        ),
                      )
                    ],
                  )
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
