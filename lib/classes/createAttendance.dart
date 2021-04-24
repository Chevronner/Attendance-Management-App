import 'dart:convert';
import 'package:http/http.dart' as http;

Future<User> createUser(
    String teacherName,
    String date,
    String time,
    String classroom,
    List<dynamic> studentReg,
    List<dynamic> studentName,
    List<dynamic> attendanceValue) async {
  var uri = Uri.https(
      'geogommetd.execute-api.us-east-2.amazonaws.com', '/createAttendance');
  final http.Response response = await http.post(
    uri,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'teacher_name': teacherName,
      'date': date,
      'time': time,
      'classroom': classroom,
      'student_reg': studentReg,
      'student_name': studentName,
      'attendance_value': attendanceValue
    }),
  );

  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class User {
  final String teacherName;
  final String date;
  final String time;
  final String classroom;
  final List<dynamic> studentReg;
  final List<dynamic> studentName;
  final List<dynamic> attendanceValue;

  User(
      {this.teacherName,
      this.date,
      this.time,
      this.classroom,
      this.studentReg,
      this.studentName,
      this.attendanceValue});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        teacherName: json['teacherName'],
        date: json['date'],
        time: json['time'],
        classroom: json['classroom'],
        studentReg: json['studentReg'],
        studentName: json['studentName'],
        attendanceValue: json['attendanceValue']);
  }
}
