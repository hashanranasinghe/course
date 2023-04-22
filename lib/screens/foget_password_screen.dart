import 'package:course_ui_components/widgets/button_field.dart';
import 'package:course_ui_components/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';


class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:
            Text(
              "Forget password",
              style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 25, vertical: (screenHeight * 0.07)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'We will send you a link via email once you enter the email address.',
                  style: TextStyle(
                      color: kSecondaryTextColorDark,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                TextFieldWidget(
                  label: "Enter Your Email",
                  onchange: (value) {},
                  valid: (value) {},
                  save: (value) {},
                  controller: emailController,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
              ],
            ),
            Column(
              children: [
                ButtonWidget(
                    text: "Send",
                    pbottom: screenHeight * 0.022,
                    ptop: screenHeight * 0.022,
                    pleft: screenWidth * 0.21,
                    pright: screenWidth * 0.21,
                    onpress: () {
                    }),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
