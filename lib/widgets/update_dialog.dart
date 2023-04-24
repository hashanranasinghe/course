import 'package:course_ui_components/widgets/button_field.dart';
import 'package:flutter/material.dart';

class UpdateDialog extends StatelessWidget {
  const UpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: screenHeight * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Center(
                child: Text(
              "Your app must need\n update",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )),
            ButtonWidget(
              onpress: () {
                Navigator.pop(context);
              },
              text: "ok",
              pleft: screenWidth * 0.3,
              pright: screenWidth * 0.3,

            )
          ],
        ),
      ),
    );
  }
}
