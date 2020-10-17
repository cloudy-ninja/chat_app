import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset(
      'assets/images/logo.png',
      height: 50,
    ),
  );
}

InputDecoration kTextFieldDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white54,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  );
}

TextStyle kSimpleTextStyle() {
  return TextStyle(
    color: Colors.white,
  );
}

TextStyle kMediumTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
}
