// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsConditions extends StatelessWidget {
  TermsConditions({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffb5cedf),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 18.0, end: 17.0),
                  Pin(size: 475.0, end: 89.0),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xff668079),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              '•	All the project deliverables are handled by the release details\n               mentioned in the proposal.\n•	Final User Acceptance Testing (UAT) shall not be more than\n               6 days from the completion of the Project.\n•	Once the source code is made live on the server, the support\n               period commences after 1 week.\n•	Non-Response from the client will lead to reallocation of\n               resources (team) into another project and the charges have\n               to be borne by the client.\n•	The validity of this proposal is 7 days.\n•	Any requirements described apart from Software\n               Requirements Document or Design Specification will be\n               considered as Change of Request.\n•	Any new Change of Request will be added with Additional\n               cost & timeline which will be documented for billing.\n•	New timelines and cost will be estimated in case of major\n               change/addition/deletion in requirements or in case of any\n               additional report requirement.\n•	 All documents and artifacts will be generated as per the\n                user satisfaction. \n•	The above estimated time and cost are based on initial\n               high-level requirements provided by the client (buyer).\n•	The cost does not include any software updates under\n               maintenance service agreement.\n ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 227.0, middle: 0.5027),
                  Pin(size: 33.0, middle: 0.1664),
                  child: Text(
                    'Terms & Conditions:',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 25,
                      color: const Color(0xff668079),
                      fontWeight: FontWeight.w600,
                      height: 0.72,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 31.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 17.0, middle: 0.796),
                        Pin(start: 6.0, end: 5.0),
                        child: SvgPicture.string(
                          _svg_gjl1,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 21.0, middle: 0.5013),
                        Pin(size: 21.0, end: 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 21.0, middle: 0.1985),
                        Pin(start: 5.0, end: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 25.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 15.0, start: 8.0),
                        Pin(size: 13.0, middle: 0.5833),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 3.0, start: 0.0),
                              Pin(size: 9.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: const Color(0xff707070),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 3.0, middle: 0.3333),
                              Pin(size: 10.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: const Color(0xff707070),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 3.0, middle: 0.6667),
                              Pin(start: 1.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: const Color(0xff707070),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 3.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: const Color(0xff707070),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 33.0, start: 26.0),
                        Pin(size: 14.0, middle: 0.5455),
                        child: Text(
                          'Simcard',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 10,
                            color: const Color(0xff413f3f),
                            fontWeight: FontWeight.w300,
                            height: 3.6,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 34.0, middle: 0.5053),
                        Pin(size: 14.0, middle: 0.5455),
                        child: Text(
                          '8:00 pm',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 10,
                            color: const Color(0xff413f3f),
                            fontWeight: FontWeight.w300,
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 24.0, end: 9.0),
                        Pin(size: 10.0, middle: 0.5333),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 11.0, start: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xff6af586),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 4.0, end: 0.0),
                              Pin(start: 2.0, end: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 3.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.0, end: 35.0),
                        Pin(size: 14.0, middle: 0.4545),
                        child: Text(
                          '37%',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 10,
                            color: const Color(0xff413f3f),
                            fontWeight: FontWeight.w300,
                            height: 3.6,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.0, start: 24.0),
                  Pin(size: 36.0, start: 43.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff465a54),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.2, start: 37.3),
                  Pin(size: 16.2, start: 52.9),
                  child: SvgPicture.string(
                    _svg_xiwas,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_gjl1 =
    '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xiwas =
    '<svg viewBox="37.3 52.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1123.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
