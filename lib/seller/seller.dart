import 'package:flutter/material.dart';

import 'form_seller.dart';
import 'header_seller.dart';
import 'next_button.dart';

class SellerHomePage extends StatefulWidget {
  final TextEditingController shopName;

  const SellerHomePage({Key key, this.shopName}) : super(key: key);
  @override
  _SellerHomePageState createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackButton(),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              new HeaderStoreInfo(),
              buildTextFieldStoreInfo(widget.shopName),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: buildButtonNextStore(width, context),
          ),
        ],
      ),
    );
  }
}
