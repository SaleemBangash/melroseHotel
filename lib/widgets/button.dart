import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const MyButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title, style: Theme.of(context).textTheme.bodyText2),
      style: TextButton.styleFrom(
        // shadowColor: Colors.black,
        // minimumSize: Size(150, 30),
        // maximumSize: Size(160, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

        //StadiumBorder(),

        backgroundColor: const Color(0xffA67B5B),
      ),
      onPressed: onPressed,
    );
    // InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     alignment: Alignment.center,
    //     height: double.maxFinite,
    //     width: double.maxFinite,
    //     decoration: BoxDecoration(
    //       color: Theme.of(context).primaryColor,
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(10),
    //       ),
    //     ),
    //     child: Text(
    //       title,
    //       style: Theme.of(context).textTheme.headline2,
    //     ),
    //   ),
    // );
  }
}
