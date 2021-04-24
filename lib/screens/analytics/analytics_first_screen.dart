import 'package:flutter/material.dart';
import 'package:checkbox/screens/analytics/components/body.dart';
import '../../size_config.dart';

class Analytics extends StatefulWidget {
  static String routeName = "/analytics";
  @override
  _AnalyticsState createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analytics",
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
