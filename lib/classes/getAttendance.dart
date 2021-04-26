import 'dart:convert';
import 'package:http/http.dart' as http;

dynamic getAttendance(
  String teacherName,
  String date,
  String classroom,
) async {
  var uri = Uri.https(
      '0jqvleloqk.execute-api.us-east-2.amazonaws.com', '/getAttendance');
  final http.Response response = await http.post(
    uri,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'teacher_name': teacherName,
      'date': date,
      'classroom': classroom
    }),
  );

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    return data;
  } else {
    throw Exception('Failed to create album.');
  }
}
