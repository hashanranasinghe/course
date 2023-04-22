import 'package:course_ui_components/utils/constants.dart';
import 'package:course_ui_components/widgets/button_field.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  final Function onPress;
  const CourseCard({Key? key, required this.onPress}) : super(key: key);

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
      child: Card(
        color: kPrimaryCourseCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 150,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Free Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ButtonWidget(
                  onpress: () {
                    widget.onPress();
                  },
                  text: "Get Started",
                  fontsize: 15,
                  color: kSecondaryButtonColorDark,
                  radius: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
