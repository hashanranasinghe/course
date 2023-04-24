import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:course_ui_components/utils/navigations.dart';
import 'package:course_ui_components/widgets/course_card.dart';
import 'package:course_ui_components/widgets/update_dialog.dart';
import 'package:course_ui_components/widgets/yt_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  color: kPrimaryButtonColorDark,
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.05),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText('Do you want to be a trader?',
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15)),
                              ],
                              isRepeatingAnimation: true,
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05),
                          child: ListTile(
                            title: Text(
                              "Hi, Test",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Let's start learning",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: CircleAvatar(
                              backgroundImage: AssetImage(user),
                              backgroundColor: kPrimaryButtonColorDark,
                              radius: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: screenHeight * 0.05),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(
                      image: binance,
                      btnTitle: "Get Started",
                      onPress: () {
                        showDialog(context: context, builder: (context){
                          return UpdateDialog();
                        });
                      },
                      title: "Free Course",
                    ),
                    CourseCard(
                      image: vector,
                      btnTitle: "Go to Video",
                      onPress: () {
                        openCourse(context);
                      },
                      title: "Advanced Course",
                    )
                  ],
                ),
              ),

              YoutubeCard()
            ],
          ),
          Positioned(
            top: screenHeight * 0.23,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Join to advanced Course",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Text(
                                    "Take your skills to the next level with our advanced course.",
                                    style: TextStyle(
                                        color: kSecondaryTextColorDark,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.01),
                            child: SizedBox(
                              height: screenHeight * 0.1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Go to Courses",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: kPrimaryButtonColorDark),
                                      ),
                                      Icon(
                                        FaIcon(FontAwesomeIcons.arrowRight)
                                            .icon,
                                        size: 15,
                                        color: kPrimaryButtonColorDark,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),

        ],
      ),
    );
  }
}
