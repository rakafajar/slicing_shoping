import 'package:flutter/material.dart';

import '../theme.dart';

Widget buildTextFieldStoreInfo(
  final TextEditingController shopName,
) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 16.0,
    ),
    padding: EdgeInsets.only(
      top: 16.0,
      left: 16.0,
      right: 16.0,
    ),
    child: TextFormField(
      controller: shopName,
      style: TextStyle(
        fontSize: 12.0,
        fontFamily: "Avenir",
        color: ThemeApp.primaryColor,
      ),
      keyboardType: TextInputType.text,
      cursorColor: ThemeApp.primaryColor,
      decoration: InputDecoration(
        hintText: "Enter your Shop Name",
        labelText: "Enter your Shop Name",
        labelStyle: TextStyle(
          color: ThemeApp.primaryColor,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeApp.primaryColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeApp.primaryColor,
          ),
        ),
      ),
    ),
  );
}
