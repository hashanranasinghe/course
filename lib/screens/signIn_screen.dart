import 'package:course_ui_components/utils/navigations.dart';
import 'package:course_ui_components/widgets/button_field.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/validate_handeler.dart';
import '../widgets/text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _form = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColorDark,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 25, vertical: (screenHeight * 0.07)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        "Welcome Back !!",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: kPrimaryTextColorDark),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      TextFieldWidget(
                        label: "Enter Your Email",
                        onchange: (value) {},
                        valid: (value) {
                          return Validater.vaildemail(value!);
                        },
                        save: (value) {},
                        controller: emailController,
                      ),
                      PasswordTextFiledWidget(
                        onchange: (value) {},
                        save: (value) {},
                        valid: (value) {
                          return Validater.signupPassword(value!);
                        },
                        label: "Password",
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onChanged: (x) {},
                                value: false,
                              ),
                              Text(
                                'Remember me',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: kSecondaryTextColorDark,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  openForgetPassword(context);
                                },
                                child: Text(
                                  "Forgot password?",
                                  style:
                                      TextStyle(color: kPrimaryButtonColorDark),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ButtonWidget(
                        text: "Log in",
                        pbottom: screenHeight * 0.022,
                        ptop: screenHeight * 0.022,
                        pleft: screenWidth * 0.32,
                        pright: screenWidth * 0.32,
                        onpress: () {
                          openHome(context);
                        }),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                              fontSize: 15, color: kSecondaryTextColorDark),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            openSignUp(context);
                          },
                          child: Text(
                            "Sign up NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: kPrimaryButtonColorDark),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: Divider(
                            color: kSecondaryTextColorDark,
                          ),
                        ),
                        Text(
                          "Or login with",
                          style: TextStyle(
                              fontSize: 15, color: kSecondaryTextColorDark),
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: Divider(
                            color: kSecondaryTextColorDark,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Image.asset(googleIcon,scale: 15,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
