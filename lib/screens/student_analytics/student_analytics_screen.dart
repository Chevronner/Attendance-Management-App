import 'package:flutter/material.dart';
import 'package:checkbox/screens/student_analytics/components/body.dart';
import '../../size_config.dart';

class StudentAnalytics extends StatefulWidget {
  static String routeName = "/studentAnalytics";
  @override
  _StudentAnalyticsState createState() => _StudentAnalyticsState();
}

class _StudentAnalyticsState extends State<StudentAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Analytics",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: SizeConfig.screenHeight * 0.1,
      ),
      body: Body(),
    );
  }
}
