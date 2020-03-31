import 'package:flutter/material.dart';
import 'package:slicing_huntstreet/seller/sell_item.dart';
import 'package:slicing_huntstreet/theme.dart';

class TermConditionPage extends StatefulWidget {
  @override
  _TermConditionPageState createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  bool _isAgree = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "TERM & CONDITIONS",
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
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 16,
                  right: 17,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Before submiting your item, please read our terms & condition",
                      style: TextStyle(
                        color: ThemeApp.primaryColor,
                        fontSize: 12.0,
                        fontFamily: "Gotham Rounded",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Terms and Condition",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ThemeApp.primaryColor,
                          fontSize: 12.0,
                          fontFamily: "Gotham Rounded",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quam at malesuada amet, dignissim in. Volutpat vitae lorem leo ultrices. Et urna volutpat quam amet tortor, cursus ultricies tincidunt nulla. Eleifend posuere cursus cursus varius egestas lobortis arcu adipiscing.",
                      style: TextStyle(
                        color: ThemeApp.primaryColor,
                        fontSize: 11.0,
                        fontFamily: "Gotham Rounded",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quam at malesuada amet, dignissim in. Volutpat vitae lorem leo ultrices. Et urna volutpat quam amet tortor, cursus ultricies tincidunt nulla. Eleifend posuere cursus cursus varius egestas lobortis arcu adipiscing.",
                      style: TextStyle(
                        color: ThemeApp.primaryColor,
                        fontSize: 11.0,
                        fontFamily: "Gotham Rounded",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quam at malesuada amet, dignissim in. Volutpat vitae lorem leo ultrices. Et urna volutpat quam amet tortor, cursus ultricies tincidunt nulla. Eleifend posuere cursus cursus varius egestas lobortis arcu adipiscing.",
                      style: TextStyle(
                        color: ThemeApp.primaryColor,
                        fontSize: 11.0,
                        fontFamily: "Gotham Rounded",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "General Terms",
                        style: TextStyle(
                          color: ThemeApp.primaryColor,
                          fontSize: 12.0,
                          fontFamily: "Gotham Rounded",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quam at malesuada amet, dignissim in. Volutpat vitae lorem leo ultrices. Et urna volutpat quam amet tortor, cursus ultricies tincidunt nulla. Eleifend posuere cursus cursus varius egestas lobortis arcu adipiscing.",
                      style: TextStyle(
                        color: ThemeApp.primaryColor,
                        fontSize: 11.0,
                        fontFamily: "Gotham Rounded",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              buildButtonAgree(width, context),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButtonAgree(double width, BuildContext context) {
    return Container(
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
      child: Column(
        children: <Widget>[
          buildCheckboxListTile(),
          buildAgreeButton(width, context)
        ],
      ),
    );
  }

  Widget buildAgreeButton(double width, BuildContext context) {
    return Container(
      width: width,
      height: 60,
      margin: EdgeInsets.only(
        top: 4.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 18.0,
      ),
      child: FlatButton(
        disabledColor: ThemeApp.greyFontColor,
        color: ThemeApp.primaryColor,
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        child: Text(
          "I AGREE",
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: "Gotham Rounded",
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SellItemPage(),
            ),
          );
        },
      ),
    );
  }

  Widget buildCheckboxListTile() {
    return CheckboxListTile(
      checkColor: ThemeApp.primaryColor,
      activeColor: ThemeApp.primaryColor,
      value: _isAgree,
      onChanged: (bool newValue) {
        setState(
          () {
            _isAgree = newValue;
          },
        );
      },
      title: Text(
        "I have read and agree the terms & conditions",
        style: TextStyle(
          fontSize: 12,
          fontFamily: " Gotham Rounded",
          color: ThemeApp.primaryColor,
        ),
        textAlign: TextAlign.left,
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
