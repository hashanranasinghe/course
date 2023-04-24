import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class YoutubeCard extends StatefulWidget {
  const YoutubeCard({
    Key? key,
  }) : super(key: key);

  @override
  State<YoutubeCard> createState() => _YoutubeCardState();
}

class _YoutubeCardState extends State<YoutubeCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Stack(children: [
        Card(
          elevation: 10,
          margin: EdgeInsets.only(top: 48, left: 15, right: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: kPrimaryButtonColorDark.withOpacity(0.6),
          child: Container(
            margin: EdgeInsets.only(
                bottom: screenHeight * 0.01, top: screenHeight * 0.01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            height: screenHeight * 0.23,
            child: SizedBox(
              height: screenHeight * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.08,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.05),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kPrimaryButtonColorDark),
                        child: Text(
                          "Janux Academy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05),
                              child: Image.asset(
                                yt,
                                scale: 15,
                              )),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05),
                              child: Image.asset(
                                fb,
                                scale: 15,
                              )),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.05),
                              child: Image.asset(
                                whatsapp,
                                scale: 15,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.015,
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Connect with Us !!',
                              textStyle: TextStyle(
                                  color: kPrimaryButtonColorDark,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(ytLogo)),
            )),
      ]),
    );
  }
}
