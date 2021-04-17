import 'package:flutter/material.dart';

import 'package:checkbox/constants.dart';
import 'package:checkbox/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(70),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: kPrimaryColor,
          elevation: 8.0,
        ),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // color: Color(0xFFF68887),
        // color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
