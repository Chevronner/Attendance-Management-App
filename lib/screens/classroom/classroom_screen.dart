import 'package:checkbox/components/sideAppbarIcons.dart';
import 'package:flutter/material.dart';
import 'package:checkbox/screens/classroom/components/body.dart';
import '../../size_config.dart';

class Classroom extends StatefulWidget {
  static String routeName = "/classroom";
  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Classroom",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        toolbarHeight: SizeConfig.screenHeight * 0.1,
        actions: sideIcons(),
      ),
      body: Body(),
    );
  }
}
