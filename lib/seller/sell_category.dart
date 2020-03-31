import 'package:flutter/material.dart';

import '../theme.dart';

class SellCategoryItem extends StatefulWidget {
  @override
  _SellCategoryItemState createState() => _SellCategoryItemState();
}

class _SellCategoryItemState extends State<SellCategoryItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "SELL YOUR ITEM",
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Gotham Rounded",
            color: ThemeApp.primaryColor,
          ),
        ),
        iconTheme: IconThemeData.fallback(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 2.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            width: width,
            child: Text(
              "SELECT CATEGORY ITEM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Gotham Rounded',
                fontWeight: FontWeight.w500,
                color: ThemeApp.categoryTextColor,
              ),
            ),
          ),
          Container(
            width: width,
            child: Text(
              "STEP 2 TO 7",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Gotham Rounded',
                fontWeight: FontWeight.w500,
                color: ThemeApp.categoryTextColor,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 280.0,
            margin: const EdgeInsets.only(
              bottom: 16.0,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                children: List.generate(
                  nameCategoryItem.length,
                  (index) {
                    return ItemCategorySeller(
                      text: nameCategoryItem[index].toUpperCase(),
                      margin: const EdgeInsets.only(
                        right: 8.0,
                        top: 16.0,
                        left: 8.0,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCategorySeller extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final VoidCallback onTap;

  const ItemCategorySeller({
    Key key,
    this.margin,
    this.onTap,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width / 2) - 32;
    return Container(
      width: width,
      height: 125,
      color: Colors.grey,
      margin: margin,
      child: Stack(
        children: <Widget>[
          Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: ThemeApp.primaryColor,
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<String> nameCategoryItem = [
  "BAG",
  "SHOES",
  "ACCESSORIES",
  "CLOTHING",
];
