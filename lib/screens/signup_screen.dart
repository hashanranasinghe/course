import 'package:course_ui_components/utils/navigations.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/validate_handeler.dart';
import '../widgets/button_field.dart';
import '../widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _form = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kPrimaryColorDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Column(
            children: [
              Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: kPrimaryTextColorDark),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      label: "First Name",
                      onchange: (value) {},
                      valid: (value) {
                        return Validater.genaralvalid(value!);
                      },
                      save: (value) {},
                      controller: firstNameController,
                    ),
                    TextFieldWidget(
                      label: "Last Name",
                      onchange: (value) {
                        lastName = value;
                      },
                      valid: (value) {
                        return Validater.genaralvalid(value!);
                      },
                      save: (value) {
                        lastName = value!;
                      },
                      controller: lastNameController,
                    ),
                    TextFieldWidget(
                      label: "Email",
                      onchange: (value) {},
                      valid: (value) {
                        return Validater.vaildemail(value!);
                      },
                      save: (value) {},
                      controller: emailController,
                    ),
                    PasswordTextFiledWidget(
                        controller: passwordController,
                        onchange: (value) {
                          password = value;
                        },
                        save: (value) {
                          password = value!;
                        },
                        valid: (value) {
                          return Validater.signupPassword(value!);
                        },
                        label: "Password"),
                    PasswordTextFiledWidget(
                        controller: confirmPasswordController,
                        onchange: (value) {
                          confirmPassword = value;
                        },
                        save: (value) {
                          confirmPassword = value!;
                        },
                        valid: (value) {
                          return Validater.confirmPassword(password, value!);
                        },
                        label: "Confirm Password"),
                    SizedBox(
                      height: screenHeight*0.01,
                    ),
                  ],
                ),
              ),
              ButtonWidget(
                  text: "Create Account",
                  pbottom: 22,
                  ptop: 22,
                  pleft: screenWidth * 0.2,
                  pright: screenWidth * 0.2,
                  onpress: () {
                    userSignUp();
                  }),
              SizedBox(
                height: screenHeight*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * 0.25,
                    child: Divider(
                      color: kSecondaryTextColorDark,
                    ),
                  ),
                  Text(
                    "Or sign up with",
                    style: TextStyle(
                        fontSize: 15, color: kSecondaryTextColorDark),
                  ),
                  SizedBox(
                    width: screenWidth * 0.25,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style:
                        TextStyle(fontSize: 15, color: kSecondaryTextColorDark),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      openSignIn(context);
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: kPrimaryButtonColorDark),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight*0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void userSignUp() async {
    if (_form.currentState!.validate()) {
      print("ok");
    }
  }
}
