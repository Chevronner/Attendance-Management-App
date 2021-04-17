import 'package:checkbox/components/custom_button.dart';
import 'package:checkbox/screens/classroom/classroom_screen.dart';
import 'package:checkbox/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool chartDataAvailable = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              text: "Add Attendance",
              press: () {
                Navigator.pushNamed(context, Classroom.routeName);
              },
            ),
          ),
          // SizedBox(
          //   height: getProportionateScreenHeight(80),
          //   width: double.infinity,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              text: "Attendance Data",
              press: () {
                print("button pressed");
              },
            ),
          ),
        ],
      ),
    );
  }
}
