import 'package:course_ui_components/widgets/about_row.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../utils/constants.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "About Us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(appIcon),
                        backgroundColor: Colors.transparent,
                        radius: 40.0,
                      ),
                      Lottie.asset(aboutAnim),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          des,
                          style: TextStyle(
                            fontSize: 12,
                            color: kSecondaryTextColorDark,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Center(
                child: Column(
                  children: [],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Column(
                  children: [
                    AboutRow(
                        text: "Hashan Ranasinghe",
                        topicIcon: FaIcon(FontAwesomeIcons.userPen).icon,
                        topic: "Name"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Divider(),
                    AboutRow(
                        text: "Januxacademy98@gmail.com",
                        topicIcon: FaIcon(FontAwesomeIcons.envelope).icon,
                        topic: "E-mail"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Divider(),
                    AboutRow(
                        text: "0123456789",
                        topicIcon: FaIcon(FontAwesomeIcons.phone).icon,
                        topic: "Phone Number"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
