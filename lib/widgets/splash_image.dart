import 'package:flutter/material.dart';

class SplashImage extends StatefulWidget {
  const SplashImage({Key? key}) : super(key: key);

  @override
  _SplashImageState createState() => _SplashImageState();
}

class _SplashImageState extends State<SplashImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/pic3.jpeg"),
        fit: BoxFit.cover,
      )),
    );
  }
}
