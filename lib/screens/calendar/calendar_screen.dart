import 'package:checkbox/screens/calendar/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class Calendar extends StatelessWidget {
  static String routeName = "/calendar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calendar",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: SizeConfig.screenHeight * 0.1,
      ),
      body: Body(),
    );
  }
}
