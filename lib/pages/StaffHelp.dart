// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/pages/LoginPage.dart';
import 'package:login/pages/QuickServices.dart';
import 'package:login/widgets/back_button.dart';
import './Housekeeping.dart';
import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';

class StaffHelp extends StatelessWidget {
  StaffHelp({
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
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuickServices())),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 400,
                height: 300,
                child: Image.asset("assets/images/image1.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Reception Staff Help',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'How Can We Help You?',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Colors.black,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => Housekeeping(),
                          ),
                        ],
                        child: Container(
                          width: 260,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(width: 1),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Hostel HouseKeeping',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => LoginPage(),
                          ),
                        ],
                        child: Container(
                          width: 260,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(width: 1),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Room Service',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => LoginPage(),
                          ),
                        ],
                        child: Container(
                          width: 260,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(width: 1),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Need Something Else?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                              textAlign: TextAlign.left,
                            ),
                          ),
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

const String _svg_et358v =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a56isi =
    '<svg viewBox="101.0 486.0 213.0 43.0" ><path transform="translate(101.0, 485.0)" d="M 6 1 L 105.1190719604492 1 L 207 1 C 210.3137054443359 1 213 3.686291217803955 213 7 L 213 38 C 213 41.3137092590332 210.3137054443359 44 207 44 L 6 44 C 2.686291217803955 44 0 41.3137092590332 0 38 L 0 7 C 0 3.686291217803955 2.686291217803955 1 6 1 Z" fill="#465a54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q5zmse =
    '<svg viewBox="101.0 614.0 213.0 43.0" ><path transform="translate(101.0, 613.0)" d="M 6 1 L 105.1190719604492 1 L 207 1 C 210.3137054443359 1 213 3.686291217803955 213 7 L 213 38 C 213 41.3137092590332 210.3137054443359 44 207 44 L 6 44 C 2.686291217803955 44 0 41.3137092590332 0 38 L 0 7 C 0 3.686291217803955 2.686291217803955 1 6 1 Z" fill="#465a54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xiwas =
    '<svg viewBox="37.3 52.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1123.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yj6rrr =
    '<svg viewBox="101.0 550.0 213.0 43.0" ><path transform="translate(101.0, 549.0)" d="M 6 1 L 105.1190719604492 1 L 207 1 C 210.3137054443359 1 213 3.686291217803955 213 7 L 213 38 C 213 41.3137092590332 210.3137054443359 44 207 44 L 6 44 C 2.686291217803955 44 0 41.3137092590332 0 38 L 0 7 C 0 3.686291217803955 2.686291217803955 1 6 1 Z" fill="#465a54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
