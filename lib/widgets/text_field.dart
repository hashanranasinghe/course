import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextInputType keybordtype;
  final TextEditingController controller;
  final String hintText;
  final double width;
  final TextInputAction textInputAction;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;
  const TextFieldWidget({
    this.textInputAction = TextInputAction.none,
    this.hintText = "Text",
    required this.onchange,
    required this.valid,
    required this.save,
    Key? key,
    required this.controller,
    this.label = "Textfiled",
    this.keybordtype = TextInputType.text,
    this.width = 500.00,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: width,
        child: TextFormField(
          textInputAction: textInputAction,
          maxLines: null,
          keyboardType: keybordtype,
          onChanged: onchange,
          onSaved: save,
          controller: controller,
          validator: valid,
          decoration: InputDecoration(
            fillColor: Color.fromRGBO(251, 251, 251, 0.79),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Color(0xFFE2E5E6), // Change this to your desired color
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Color(0xFFE2E5E6), // Change this to your desired color
                width: 1.0,
              ),
            ),
            label: Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: kSecondaryTextColorDark),
            ),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
class PasswordTextFiledWidget extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextInputType textInput;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;
  final TextEditingController controller;
  const PasswordTextFiledWidget({
    this.icon = Icons.person,
    required this.onchange,
    required this.save,
    this.textInput = TextInputType.text,
    Key? key,
    required this.valid,
    required this.label, required this.controller,
  }) : super(key: key);

  @override
  _PasswordTextFiledWidgetState createState() => _PasswordTextFiledWidgetState();
}

class _PasswordTextFiledWidgetState extends State<PasswordTextFiledWidget> {
  bool isHidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: widget.controller,
        obscuringCharacter: '*',
        obscureText: isHidePassword,
        validator: widget.valid,
        onChanged: widget.onchange,
        onSaved: widget.save,
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(251, 251, 251, 0.79),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color(0xFFE2E5E6), // Change this to your desired color
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color(0xFFE2E5E6), // Change this to your desired color
              width: 1.0,
            ),
          ),
          label: Text(
            widget.label,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: kSecondaryTextColorDark),
          ),
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          suffixIcon: InkWell(
              onTap: _viewPassword,
              child: isHidePassword == true
                  ? Icon(
                Icons.visibility_off_rounded,
                color: kSecondaryTextColorDark,
              )
                  : Icon(Icons.visibility_rounded,
                  color: kSecondaryTextColorDark)),
        ),
      ),
    );
  }

  void _viewPassword() {
    if (isHidePassword == true) {
      isHidePassword = false;
    } else {
      isHidePassword = true;
    }
    setState(() {});
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class PinTextFieldWidget extends StatelessWidget {
  final TextInputType keybordtype;
  final TextEditingController controller;
  final String hintText;

  final TextInputAction textInputAction;
  final Function(String) onchange;
  final Function(String?) save;
  final String? Function(String?) valid;
  const PinTextFieldWidget({
    this.textInputAction = TextInputAction.none,
    this.hintText = "Text",
    required this.onchange,
    required this.valid,
    required this.save,
    Key? key,
    required this.controller,
    this.keybordtype = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        textInputAction: textInputAction,
        maxLines: 1,
        keyboardType: keybordtype,
        onChanged: onchange,
        onSaved: save,
        controller: controller,
        validator: valid,
        maxLength: 1,
        minLines: 1,
        decoration: InputDecoration(
          hintText: "0",
          fillColor: Color.fromRGBO(251, 251, 251, 0.79),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color(0xFFE2E5E6), // Change this to your desired color
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color(0xFFE2E5E6), // Change this to your desired color
              width: 1.0,
            ),
          ),
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
