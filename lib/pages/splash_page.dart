import 'package:login/main.dart';
import 'package:login/pages/PopupScreen.dart';
// import 'package:login/pages/google_map_page.dart';
import 'package:login/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:login/widgets/splash_image.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _body(),
      ],
    ));
  }

  _body() => Stack(
        children: [
          SplashImage(),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logooo.png"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Welcome",
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  )),
                      Center(
                        child: Text(
                            "         The \nMelrose Hotel\nAt The Beach",
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );

  _load() {
    Future.delayed(const Duration(milliseconds: 10000), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => PopupScreen()));
    });
  }
}
