// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? border;
  // final Function validator;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  //final  MultiValidator validate;
  final EdgeInsetsGeometry? contentPadding;
  final bool isDense;
  final bool filled;
  final bool obsecureText;
  final Widget? suffixIcon;
  const MyTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.border,
    this.inputType = TextInputType.text,
    this.validator,
    this.contentPadding,
    // required this.MultiValidator,
    this.filled = false,
    this.isDense = false,
    this.suffixIcon,
    this.obsecureText = false,
    //  required this.onValidate,
    // required MultiValidator validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (value) {
      //   return onValidate(value.toString());
      // },
      validator: validator,
      style: TextStyle(color: Colors.black),
      keyboardType: inputType,
      obscureText: obsecureText,
      decoration: InputDecoration(
        isDense: isDense,
        contentPadding: contentPadding,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        hintStyle: TextStyle(color: Colors.black),
        filled: filled,
        fillColor: Theme.of(context).primaryColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      // validator: MultiValidator,
    );
  }
}
