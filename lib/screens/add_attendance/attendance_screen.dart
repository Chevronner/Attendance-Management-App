import 'package:flutter/material.dart';
import 'package:checkbox/screens/add_attendance/components/body.dart';
import '../../size_config.dart';

class TakeAttendanceScreen extends StatefulWidget {
  static String routeName = "/takeAttendanceScreen";

  @override
  _TakeAttendanceScreenState createState() => _TakeAttendanceScreenState();
}

class _TakeAttendanceScreenState extends State<TakeAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Take Attendance",
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
