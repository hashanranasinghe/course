import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/constants.dart';
import '../widgets/expansion_details.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
          "FAQ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: screenHeight*0.3,
                child: Lottie.asset(faqAnim)),
            ExpansionDetails(topic: q1,text: a1,),
            ExpansionDetails(topic: q2,text: a2,),
            ExpansionDetails(topic: q3,text: a3,),
          ],
        ),
      ),
    );
  }
}
