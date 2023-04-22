import 'package:course_ui_components/utils/navigations.dart';
import 'package:course_ui_components/widgets/course_card.dart';
import 'package:course_ui_components/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: kPrimaryButtonColorDark,
          elevation: 0,
          centerTitle: true,
          title: Column(
            children: [
              Text("Hi, Test"),
              Text(
                "Let's start learning",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          actions: [
            Image.asset(
              user,
              scale: 15,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CourseCard(
                  onPress: () {
                    openCourse(context);
                  },
                ),
                CourseCard(onPress: () {
                  openCourse(context);
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
