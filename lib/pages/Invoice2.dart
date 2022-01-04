// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/pages/QuickServices.dart';
import 'package:login/widgets/back_button.dart';
import './Invoice.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Invoice2 extends StatelessWidget {
  Invoice2({
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
                          builder: (context) => QuickServices(),
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
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Amount Due (GBP)",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "\$2170.00",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "Billed To",
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "MR James Rowan",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "Street 87 Starmford Road",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "Brimingham England",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "B1 west Midlands",
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Transfer Bank Details',
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            'Invoice Number',
                            style: Theme.of(context).textTheme.headline3,
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
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '00009887',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'Date Of Issue',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Please Pay Invoice Within 15Days',
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '15.01.2022',
                            style: Theme.of(context).textTheme.headline3,
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
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'Due Date',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '30.01.2022',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
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
const String _svg_i8pn81 =
    '<svg viewBox="0.0 99.0 414.0 151.0" ><defs><pattern id="image" patternUnits="userSpaceOnUse" width="4608.0" height="3072.0"><image xlink:href="assets/images/image4.jpg" x="0" y="0" width="4608.0" height="3072.0" /></pattern></defs><path transform="translate(2420.0, 1734.0)" d="M -2420.00048828125 -1484.000122070312 L -2420.00048828125 -1635.000366210938 L -2006.000366210938 -1635.000366210938 L -2006.000366210938 -1484.000122070312 L -2420.00048828125 -1484.000122070312 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vr4cy4 =
    '<svg viewBox="216.0 344.0 1.0 252.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 2236.0, -2100.0)" d="M 2444.00048828125 2020 L 2696 2020" fill="none" stroke="#707070" stroke-width="0.5" stroke-dasharray="2 2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_duq3jw =
    '<svg viewBox="37.3 53.9 16.2 16.2" ><path transform="matrix(0.707107, 0.707107, -0.707107, 0.707107, 1286.22, -1122.56)" d="M -45.41448211669922 1709.196044921875 L -45.41448211669922 1720.797729492188 L -34.1296501159668 1720.797729492188" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
