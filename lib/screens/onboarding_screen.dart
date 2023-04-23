
import 'package:course_ui_components/utils/navigations.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../utils/constants.dart';
import '../widgets/button_field.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'A reader lives a thousand lives',
            body: 'The man who never reads lives only one.',
            image: buildImage(vector),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Featured Books',
            body: 'Available right at your fingerprints',
            image: buildImage(vector),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Simple UI',
            body: 'For enhanced reading experience',
            image: buildImage(vector),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Today a reader, tomorrow a leader',
            body: 'Start your journey',
            footer: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: ButtonWidget(
                text: 'Start Learning',
                onpress: () => openSignIn(context),
              ),
            ),
            image: buildImage(vector),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text('Next',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: kPrimaryButtonColorDark)),
        onDone: () => openSignIn(context),
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(color: kPrimaryButtonColorDark),
        ),
        onSkip: () => openSignIn(context),
        next: Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),

        nextFlex: 0,
        // isProgressTap: false,
        // isProgress: false,
        // showNextButton: false,
        // freeze: true,
        // animationDuration: 1000,
      ),
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: kPrimaryButtonColorDark,

        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
