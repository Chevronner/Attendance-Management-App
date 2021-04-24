import 'package:checkbox/components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:checkbox/screens/class_analytics/components/body.dart';
import '../../size_config.dart';

class ClassAnalytics extends StatefulWidget {
  static String routeName = "/classAnalytics";
  @override
  _ClassAnalyticsState createState() => _ClassAnalyticsState();
}

class _ClassAnalyticsState extends State<ClassAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Class Analytics",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: SizeConfig.screenHeight * 0.1,
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {
              showSearch(context: context, delegate: SearchBar());
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}
