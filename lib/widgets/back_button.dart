import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  // final String title;
  final Function()? onPressed;
  const NewButton({
    Key? key,
    // required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(width: 1, color: Colors.black)),
      child: CircleAvatar(
          backgroundColor: const Color(0xfff4f4f1),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
    );
    //  ElevatedButton(
    //   child: Text(title, style: Theme.of(context).textTheme.bodyText2),
    //   style: TextButton.styleFrom(
    //     // shadowColor: Colors.black,
    //     // minimumSize: Size(150, 30),
    //     // maximumSize: Size(160, 30),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

    //     //StadiumBorder(),

    //     backgroundColor: const Color(0xff668079),
    //   ),
    //   onPressed: onPressed,
    // );
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
