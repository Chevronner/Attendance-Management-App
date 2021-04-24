import 'package:checkbox/screens/add_attendance/attendance_screen.dart';
import 'package:checkbox/screens/class_analytics/class_analytics_screen.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class ClassroomCard extends StatelessWidget {
  final String subject;
  final bool path;
  ClassroomCard({
    Key key,
    @required this.subject,
    this.path,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: getProportionateScreenHeight(120),
        width: getProportionateScreenWidth(350),
        child: GestureDetector(
          onTap: () {
            if (path)
              Navigator.pushNamed(context, TakeAttendanceScreen.routeName);
            else
              Navigator.pushNamed(context, ClassAnalytics.routeName);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      subject,
                      style: TextStyle(
                        fontSize: 23.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
