// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:login/pages/LoginPage.dart';
//import './Login.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/pages/RoomBooking.dart';
import 'package:login/main.dart';
import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/button.dart';
import 'package:login/widgets/text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupPage extends StatefulWidget {
  SignupPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _text = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);

    return Stack(
      children: [
        Container(
          // height: sizeConfig!.height(.9),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/pic6.jpeg"),
            fit: BoxFit.cover,
          )),
        ),
        // Image.asset(
        //   "assets/images/pic6.jpeg",
        //   // width: width / 0.4,
        //   height: height / 1.03,
        //   fit: BoxFit.cover,

        //   //fit: BoxFit.cover,
        // ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image.asset(
                    //   "assets/images/pic6.jpeg",
                    //   // width: width / 0.4,
                    //   height: 760,
                    //   fit: BoxFit.cover,

                    //   //fit: BoxFit.cover,
                    // ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: NewButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage())),
                        )),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 60, left: 120),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       color: const Color(0xffb5cedf),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Sign_up',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                          // TextStyle(
                          //   fontFamily: 'Open Sans',
                          //   fontSize: 20,
                          //   // color: Theme.of(context).primaryColor,
                          //   fontWeight: FontWeight.w600,
                          // ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Use your credential here to signup',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 20,
                            // color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Form(
                          key: formkey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 290,
                                  child: MyTextField(
                                    inputType: TextInputType.text,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),

                                    // validator: (value) {
                                    //   if (value!.isEmpty) return "error";
                                    // },

                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "* Required"),
                                      MinLengthValidator(6,
                                          errorText:
                                              "Name should be atleast 6 characters"),
                                      MaxLengthValidator(15,
                                          errorText:
                                              "Name should not be greater than 15 characters")
                                    ]),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "User Name",
                                    filled: true,
                                    // obsecureText: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 290,
                                  child: MyTextField(
                                    inputType: TextInputType.phone,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),

                                    // validator: (value) {
                                    //   if (value!.isEmpty) return "error";
                                    // },

                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "* Required"),
                                      PatternValidator(
                                          r'(^(?:[+0]9)?[0-9]{10,12}$)',
                                          errorText:
                                              "Please enter valid number")
                                    ]),

                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "Phone",
                                    filled: true,
                                    // obsecureText: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 290,
                                  child: MyTextField(
                                    inputType: TextInputType.visiblePassword,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),

                                    // validator: (value) {
                                    //   if (value!.isEmpty) return "error";
                                    // },

                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "* Required"),
                                      MinLengthValidator(8,
                                          errorText:
                                              'password must be at least 8 digits long'),
                                      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                          errorText:
                                              'passwords must have at least one special character')
                                    ]),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "Password",
                                    filled: true,
                                    obsecureText: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 290,
                                  child: MyTextField(
                                    inputType: TextInputType.emailAddress,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),

                                    // validator: (value) {
                                    //   if (value!.isEmpty) return "error";
                                    // },

                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "* Required"),
                                      EmailValidator(
                                          errorText: 'Enter Valid Email')
                                    ]),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "Email",
                                    filled: true,
                                    // obsecureText: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        //  margin: EdgeInsets.symmetric(vertical: sizeConfig!.height(.01)),
                        height: 30,
                        width: 150,
                        child: MyButton(
                          title: "Submit",
                          onPressed: () {
                            // setState(() {
                            //   _text.text.isEmpty
                            //       ? _validate = true
                            //       : _validate = false;
                            // });
                            if (formkey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginPage()));
                              print("Validated");
                            } else {
                              print("Not Validated");
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => LoginPage(),
                            ),
                          ],
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                // color: const Color(0xff668079),
                              ),
                              children: [
                                TextSpan(
                                  text: 'If you have any account then\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    // color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
