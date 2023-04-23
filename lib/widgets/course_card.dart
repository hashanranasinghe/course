import 'package:course_ui_components/utils/constants.dart';
import 'package:course_ui_components/widgets/button_field.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  final Function onPress;
  final String title;
  final String btnTitle;
  final String image;
  const CourseCard({Key? key, required this.onPress, required this.title, required this.btnTitle, required this.image}) : super(key: key);

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
      child: Card(
        elevation: 5,
        color: kPrimaryCourseCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage(widget.image),alignment: Alignment.centerRight,opacity: 0.9,scale: 30)
          ),
          height: 150,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ButtonWidget(
                  onpress: () {
                    widget.onPress();
                  },
                  text: widget.btnTitle,
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
