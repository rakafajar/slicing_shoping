import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp._();


  static const Color primaryColor = Color(0xFF231F20);
  static const Color secondaryColor = Color(0xFFa37b24);
  static const Color greyFontColor = Color(0xFF999999);
  static const Color lineColor = Color(0xFFD7D7D7);
  static const Color labelColor = Color.fromRGBO(168, 168, 168, 0.6);
  static const Color borderColor = Color(0xFFA8A8A8);
  static const Color discount = Color(0xFF800308);
  static const Color genderSelected = Color(0xFF4A4A4A);
  static const Color registerButton = Color(0xFF4A4A4A);
  static const Color greySmallColor = Color(0xFFAAAAAA);
  static const Color dividerColor = Color(0xFFDADADA);
  static const Color iconColor = Color(0xFF4A4A4A);
  static const Color searchColor = Color(0xFFC7C7C7);
  static const Color categoryTextColor = Color(0xFF4B4A50);
  static const Color headBanner = Color(0xFF27AE60);
  static const Color brandFontColor = Color(0xFF828282);
  static const Color itemColor = Color(0xFF585858);
  static const Color priceItemColor = Color(0xFFC99E51);
  static const Color outlineButton = Color(0xFF2A2B2D);
  static const Color conditionItem = Color(0xFF888888);
  static const Color addPhotoColor = Color(0xFFBDBDBD);
  static const Color settingColor = Color(0xFFA2A2A2);
  static const Color transaction = Color(0xFF505050);
  static const Color redActionColor = Color(0xFFEB5757);
  static const Color colorDate = Color(0xFF8A8A8A);
  static const Color onHoldColor = Color(0xFFa7a9ac);
  static const Color onSoldColor = Color(0xFF58595b);
  static const Color colorFavorite = Color(0xFF500000);
  static const Color successfullyColor = Color(0xFF024C1F);

  static InputDecoration inputDecorationCustom(String label) {
    return InputDecoration(
      labelText: label,
      hoverColor: ThemeApp.primaryColor,
      focusColor: ThemeApp.primaryColor,
      labelStyle: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Circular Std Book',
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeApp.lineColor,
        ),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeApp.lineColor,
        ),
      ),
      fillColor: ThemeApp.primaryColor,
      hintStyle: TextStyle(
        color: Color.fromRGBO(168, 168, 168, 0.6),
        fontFamily: 'Circular Std Book',
        fontSize: 16.0,
      ),
    );
  }

  static InputDecoration inputDecorationCheckout(String label) {
    return InputDecoration(
      labelText: label,
      hintText: label,
      alignLabelWithHint: true,
      contentPadding: label == "Address Detail"
          ? EdgeInsets.only(
              bottom: 50.0,
            )
          : null,
      hoverColor: ThemeApp.primaryColor,
      focusColor: ThemeApp.primaryColor,
      labelStyle: TextStyle(
        fontSize: 14.0,
        fontFamily: 'Circular Std Book',
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeApp.lineColor,
        ),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeApp.lineColor,
        ),
      ),
      fillColor: ThemeApp.primaryColor,
      hintStyle: TextStyle(
        color: Color.fromRGBO(168, 168, 168, 0.6),
        fontFamily: 'Circular Std Book',
        fontSize: 16.0,
      ),
    );
  }

  static InputDecoration inputDecoration({@required String hint}) {
    return InputDecoration(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeApp.secondaryColor,
        ),
      ),
      hintText: hint,
      fillColor: ThemeApp.primaryColor,
      hintStyle: TextStyle(
        fontSize: 12.0,
        fontFamily: 'Avenir',
        color: ThemeApp.lineColor,
      ),
    );
  }

  static TextStyle itemBrandTextStyle() {
    return TextStyle(
      fontSize: 8.0,
      fontWeight: FontWeight.w700,
      color: ThemeApp.primaryColor,
    );
  }

  static TextStyle itemNameTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 10.0,
      color: ThemeApp.primaryColor,
    );
  }

  static TextStyle itemPriceTextStyle({bool isDiscount = false}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      color: isDiscount ? ThemeApp.colorFavorite : ThemeApp.secondaryColor ,
    );
  }

  static TextStyle itemPriceDiscountTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10.0,
      decoration: TextDecoration.lineThrough,
      color: ThemeApp.secondaryColor,
    );
  }

  static TextStyle itemDiscountRate(){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10.0,
      color: ThemeApp.colorFavorite,
    );
  }

  static TextStyle itemCondition() {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 11.0,
      color: ThemeApp.conditionItem,
    );
  }

  static TextStyle viewAllTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      color: ThemeApp.primaryColor,
    );
  }

  static BoxDecoration discountDecoration() {
    return BoxDecoration(
      color: ThemeApp.discount,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
      ),
    );
  }

  static TextStyle bottomSheetLoginTextStyle() {
    return TextStyle(
      color: ThemeApp.greyFontColor,
      fontFamily: 'Poppins',
      fontSize: 12.0,
    );
  }

  static TextStyle categoryTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontFamily: 'Avenir',
      fontSize: 14.0,
    );
  }

  static TextStyle recipientAddressTextStyle() {
    return TextStyle(
      fontFamily: 'Avenir Heavy',
      fontSize: 13.0,
      color: ThemeApp.primaryColor,
    );
  }

  static TextStyle addressTextStyle() {
    return TextStyle(
      fontFamily: 'Avenir',
      fontSize: 13.0,
      color: ThemeApp.borderColor,
    );
  }

  static TextStyle appBarTextStyle() {
    return TextStyle(
      fontFamily: 'Avenir Heavy',
      fontSize: 20.0,
      color: ThemeApp.registerButton,
    );
  }
}

