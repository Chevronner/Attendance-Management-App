import 'package:checkbox/classes/createAttendance.dart';
import 'package:checkbox/components/custom_button.dart';
import 'package:checkbox/constants.dart';
import 'package:flutter/material.dart';
import 'package:checkbox/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool checkedValue = false;
  bool pressAttention = true;

  void printList() {
    print(studentNames);
    print(registrationNumber);
    print(attendanceValue);
  }

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
                registrationNo: "19BCS089",
              ),
              StudentCard(
                name: "Anany Talwad",
                registrationNo: "19BEC004",
              ),
              StudentCard(
                name: "Nihar Sanda",
                registrationNo: "19BCS125",
              ),
              StudentCard(
                name: "Satyam Kumar Thakur",
                registrationNo: "19BEC040",
              ),
              StudentCard(
                name: "Uddesh Krisagar",
                registrationNo: "19BEC021",
              ),
              StudentCard(
                name: "Dilip kumar",
                registrationNo: "19BEC012",
              ),
              StudentCard(
                name: "Uttam Kumar jangid Extra word",
                registrationNo: "19BCS108",
              ),
              StudentCard(
                name: "Akshat Mishra",
                registrationNo: "19BCS035",
              ),
              StudentCard(
                name: "Divyansh",
                registrationNo: "19BCS040",
              ),
              StudentCard(
                name: "Satyam Kumar Thakur",
                registrationNo: "19BEC040",
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              CustomButton(
                text: "Submit",
                press: () async {
                  print("Successful");
                  printList();
                  var x = await createUser("Uma", "23-04-2002", "10:35", "CSE",
                      registrationNumber, studentNames, attendanceValue);
                  print(x);
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> studentNames = [];
List<String> registrationNumber = [];
List<String> attendanceValue = [];

class StudentCard extends StatefulWidget {
  final String name;
  final String registrationNo;
  StudentCard({
    Key key,
    this.name,
    this.registrationNo,
  }) : super(key: key);
  @override
  _StudentCardState createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  bool pressAttention = true;
  int index;

  void printList() {
    print(studentNames);
    print(registrationNumber);
    print(attendanceValue);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 5.0,
      ),
      child: Container(
        // height: getProportionateScreenHeight(100),
        width: getProportionateScreenWidth(360),

        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: pressAttention ? Colors.green : Colors.red,
            elevation: 3.0,
          ),
          onPressed: () {
            setState(() {
              pressAttention = !pressAttention;
            });
            print(widget.registrationNo +
                "   " +
                widget.name +
                "   " +
                pressAttention.toString());

            if (registrationNumber.contains(widget.registrationNo)) {
              index = registrationNumber.indexOf(widget.registrationNo);
              attendanceValue[index] = pressAttention.toString();
            } else {
              studentNames.add(widget.name);
              registrationNumber.add(widget.registrationNo);
              attendanceValue.add(pressAttention.toString());
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6.0,
              horizontal: 10.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    widget.registrationNo,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(18),
                ),
                Flexible(
                  flex: 4,
                  child: Text(
                    widget.name,
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
