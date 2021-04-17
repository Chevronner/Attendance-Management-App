import 'package:checkbox/components/classroom_card.dart';
import 'package:checkbox/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            ClassroomCard(
              subject: "DBMS",
            ),
            ClassroomCard(
              subject: "Operating System",
            ),
          ],
        ),
      ),
    );
  }
}
