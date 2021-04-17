import 'package:flutter/material.dart';
import 'package:checkbox/components/navDrawer.dart';
import 'package:checkbox/components/sideAppbarIcons.dart';
import 'package:checkbox/screens/dashboard/components/body.dart';
import 'package:checkbox/size_config.dart';

class DashBoard extends StatefulWidget {
  static String routeName = "/dashboard";
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: new NavDrawer(),
        appBar: AppBar(
          title: Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          toolbarHeight: SizeConfig.screenHeight * 0.125,
          actions: sideIcons(),
        ),
        body: Body(),
      ),
    );
  }
}
