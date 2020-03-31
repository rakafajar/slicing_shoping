import 'package:flutter/material.dart';
import 'package:slicing_huntstreet/seller/term_condition.dart';
import 'package:slicing_huntstreet/theme.dart';

Widget buildButtonNextStore(double width, BuildContext context) {
  return Container(
    width: width,
    height: 65,
    margin: EdgeInsets.only(
      top: 16.0,
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: 18.0,
    ),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.25),
          offset: Offset(1.0, 1.0),
          blurRadius: 16.0,
        ),
      ],
      color: Colors.white,
    ),
    child: FlatButton(
      disabledColor: ThemeApp.greyFontColor,
      color: ThemeApp.primaryColor,
      disabledTextColor: Colors.white,
      textColor: Colors.white,
      child: Text(
        "NEXT",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Gotham Rounded",
        ),
      ),
      onPressed: () {
        print("Pindah halaman");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TermConditionPage(),
          ),
        );
      },
    ),
  );
}
