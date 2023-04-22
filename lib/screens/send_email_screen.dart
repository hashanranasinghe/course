import 'package:course_ui_components/widgets/button_field.dart';
import 'package:course_ui_components/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SendEmailScreen extends StatefulWidget {
  const SendEmailScreen({Key? key}) : super(key: key);

  @override
  State<SendEmailScreen> createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {
  final _form = GlobalKey<FormState>();
  TextEditingController subjectController = TextEditingController();
  TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _form,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Send E-mail",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      TextFieldWidget(
                        onchange: (value) {},
                        valid: (value) {},
                        save: (value) {},
                        controller: subjectController,
                        label: "Subject",
                      ),
                      TextFieldWidget(
                        onchange: (value) {},
                        valid: (value) {},
                        save: (value) {},
                        controller: msgController,
                        label: "Message",
                      ),
                      ButtonWidget(
                        onpress: () {},
                        text: "Send Email",
                        ptop: 15,
                        pbottom: 15,
                        pleft: screenWidth * 0.1,
                        pright: screenWidth * 0.1,
                      )
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
