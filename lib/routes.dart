import 'package:checkbox/screens/add_attendance/attendance_screen.dart';
import 'package:checkbox/screens/analytics/analytics_first_screen.dart';
import 'package:checkbox/screens/class_analytics/class_analytics_screen.dart';
import 'package:checkbox/screens/classroom/classroom_screen.dart';
import 'package:checkbox/screens/student_analytics/student_analytics_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:checkbox/screens/complete_profile/complete_profile_screen.dart';
import 'package:checkbox/screens/dashboard/dashboard.dart';
import 'package:checkbox/screens/forgot_password/forgot_password_screen.dart';
import 'package:checkbox/screens/homeScreen.dart';
import 'package:checkbox/screens/login_success/login_success_screen.dart';
import 'package:checkbox/screens/otp/otp_screen.dart';
import 'package:checkbox/screens/sign_in/sign_in_screen.dart';
import 'package:checkbox/screens/sign_up/sign_up_screen.dart';
import 'package:checkbox/screens/calendar/calendar_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  DashBoard.routeName: (context) => DashBoard(),
  HomeScreen.routeName: (context) => HomeScreen(),
  Calendar.routeName: (context) => Calendar(),
  Classroom.routeName: (context) => Classroom(),
  TakeAttendanceScreen.routeName: (context) => TakeAttendanceScreen(),
  Analytics.routeName: (context) => Analytics(),
  ClassAnalytics.routeName: (context) => ClassAnalytics(),
  StudentAnalytics.routeName: (context) => StudentAnalytics(),
};
