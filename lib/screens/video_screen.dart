import 'package:course_ui_components/utils/constants.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.3,
              width: screenWidth,
              color: kPrimaryButtonColorDark,
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.7,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05,vertical: screenHeight*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Introduction video | Crypto",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      Text(
                        "About this video",
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      Text(des,textAlign: TextAlign.justify,style: TextStyle(
                        color: kSecondaryTextColorDark
                      ),)

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
