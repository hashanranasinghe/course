
import 'package:course_ui_components/screens/course_screen.dart';
import 'package:course_ui_components/screens/foget_password_screen.dart';
import 'package:course_ui_components/screens/send_email_screen.dart';
import 'package:course_ui_components/screens/signIn_screen.dart';
import 'package:flutter/material.dart';

import '../screens/signup_screen.dart';
import '../widgets/bottom_navigation.dart';

void openSignUp(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SignUpScreen()));
}

void openSignIn(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const SignInScreen()));
}
void openForgetPassword(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()));
}
void openHome(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
}
void openCourse(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const CourseScreen()));
}

void openEmail(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const SendEmailScreen(
  )));
}