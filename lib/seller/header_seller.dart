import 'package:flutter/material.dart';

import '../theme.dart';

class HeaderStoreInfo extends StatelessWidget {
  const HeaderStoreInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        bottom: 8.0,
      ),
      child: Text(
        "ENTER\nSTORE INFO",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Gotham Rounded',
          color: ThemeApp.primaryColor,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
