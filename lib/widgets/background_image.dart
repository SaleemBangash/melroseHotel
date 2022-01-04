// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/pic1.jpeg"),
        fit: BoxFit.cover,
      )),
    );
  }
}