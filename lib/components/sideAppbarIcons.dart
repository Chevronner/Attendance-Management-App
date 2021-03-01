import 'package:flutter/material.dart';
import 'package:checkbox/size_config.dart';

import 'package:checkbox/constants.dart';

List<Widget> sideIcons() {
  List<Widget> sideIcons = [
    Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
          height: getProportionateScreenHeight(45),
          width: getProportionateScreenWidth(45),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add,
              size: 26.0,
            ),
          ),
        )),
    Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: getProportionateScreenHeight(45),
        width: getProportionateScreenWidth(45),
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: GestureDetector(
          onTap: () {},
          // child: SvgPicture.asset("assets/icons/Bell.svg"),
          child: Icon(Icons.notifications),
        ),
      ),
    ),
  ];
  return sideIcons;
}
