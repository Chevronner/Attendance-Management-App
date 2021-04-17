import 'package:flutter/material.dart';
import 'package:checkbox/size_config.dart';
import 'package:checkbox/components/student_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Priyam",
              ),
              StudentCard(
                name: "Satyam Kumar Thakur",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
