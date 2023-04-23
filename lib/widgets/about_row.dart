import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AboutRow extends StatelessWidget {
  final String text;
  final IconData? topicIcon;
  final String topic;
  final Color color;
  const AboutRow(
      {Key? key,
      required this.text,
      required this.topicIcon,
      required this.topic,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              topicIcon,
              color: kPrimaryButtonColorDark,
            ),
            SizedBox(
              width: screenWidth * 0.04,
            ),
            Text("$topic:")
          ],
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.02, vertical: screenHeight*0.02),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryButtonColorDark,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
