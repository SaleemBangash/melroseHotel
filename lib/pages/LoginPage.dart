// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import './RoomBooking.dart';
import 'package:adobe_xd/page_link.dart';
//import './SignupPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:login/pages/PopupScreen.dart';
import 'package:login/pages/RoomBooking.dart';
import 'package:login/pages/SignupPage.dart';

import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/button.dart';
import 'package:login/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool onChecked = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/pic6.jpeg"),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: const Color(0xffb5cedf),
          body: ListView(
            children: <Widget>[
              // Image.asset(
              //   "assets/images/pic6.jpeg",
              //   // width: width / 0.4,
              //   height: height / 1.03,
              //   fit: BoxFit.cover,

              //   //fit: BoxFit.cover,
              // ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: NewButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PopupScreen())),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Login',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                          // TextStyle(
                          //   fontFamily: 'Open Sans',
                          //   fontSize: 20,
                          //   // color: const Color(0xff465a54),
                          //   fontWeight: FontWeight.w600,
                          // ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Use your credential here to login',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 20,
                          // color: const Color(0xff465a54),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formkey,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                width: 290,
                                child: MyTextField(
                                  inputType: TextInputType.text,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),

                                  // validator: (value) {
                                  //   if (value!.isEmpty) return "error";
                                  // },
                                  // onValidate: (value) => MultiValidator([
                                  //   RequiredValidator(errorText: "* Required"),
                                  //   MinLengthValidator(6,
                                  //       errorText:
                                  //           "Password should be atleast 6 characters"),
                                  //   MaxLengthValidator(15,
                                  //       errorText:
                                  //           "Password should not be greater than 15 characters")
                                  // ]),
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: "* Required"),
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
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 300,
                                child: MyTextField(
                                  isDense: true,
                                  inputType: TextInputType.visiblePassword,

                                  // onValidate: (value) => MultiValidator([
                                  //   RequiredValidator(errorText: "* Required"),
                                  //   MinLengthValidator(6,
                                  //       errorText:
                                  //           "Password should be atleast 6 characters"),
                                  //   MaxLengthValidator(15,
                                  //       errorText:
                                  //           "Password should not be greater than 15 characters")
                                  // ]),
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: "* Required"),
                                    MinLengthValidator(6,
                                        errorText:
                                            "Password should be atleast 6 characters"),
                                    MaxLengthValidator(15,
                                        errorText:
                                            "Password should not be greater than 15 characters")
                                  ]),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: Colors.black,
                                  ),
                                  hintText: "Password",
                                  filled: true,

                                  obsecureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                    // onChecked = false;
                                  });
                                },
                              ),
                              Text(
                                'Remember Me',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: onChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    //isChecked = value!;
                                    onChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                'Forgot Password',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        //  margin: EdgeInsets.symmetric(vertical: sizeConfig!.height(.01)),
                        height: 30,
                        width: 150,
                        child: MyButton(
                            title: "Login",
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignupPage()));
                                print("Validated");
                              } else {
                                print("Not Validated");
                              }
                            }),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => SignupPage(),
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
                                  text: 'SignUp',
                                  style: TextStyle(
                                    // color: const Color(0xff465a54),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
