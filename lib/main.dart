import 'package:flutter/material.dart';
import 'package:slicing_huntstreet/seller/next_button.dart';
import 'package:slicing_huntstreet/seller/seller.dart';
import 'package:slicing_huntstreet/theme.dart';

import 'seller/form_seller.dart';
import 'seller/header_seller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SellerHomePage(),
    );
  }
}