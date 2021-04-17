import 'package:flutter/material.dart';
import '../size_config.dart';

class StudentCard extends StatefulWidget {
  final String name;
  StudentCard({
    Key key,
    @required this.name,
  }) : super(key: key);

  @override
  _StudentCardState createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    bool pressAttention = true;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 5.0,
      ),
      child: Container(
        // height: getProportionateScreenHeight(100),
        width: getProportionateScreenWidth(360),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: pressAttention ? Colors.green : Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 7.0,
              horizontal: 12.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "19BCS089",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Flexible(
                  flex: 4,
                  child: Text(
                    "Satyam Kumar Thakur",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
