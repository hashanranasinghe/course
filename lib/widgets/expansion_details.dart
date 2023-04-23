import 'package:course_ui_components/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpansionDetails extends StatefulWidget {
  final String text;
  final String topic;
  const ExpansionDetails({Key? key, required this.text, required this.topic})
      : super(key: key);

  @override
  State<ExpansionDetails> createState() => _ExpansionDetailsState();
}

class _ExpansionDetailsState extends State<ExpansionDetails> {
  bool isClose = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              onExpansionChanged: (value) {
                setState(() {
                  isClose = value;
                });
              },
              title: Text(
                widget.topic,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryButtonColorDark),
              ),
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontSize: 12, color: kSecondaryTextColorDark),
                ),
              ],
              trailing: isClose
                  ? Icon(FaIcon(FontAwesomeIcons.chevronUp).icon)
                  : Icon(
                      FaIcon(FontAwesomeIcons.chevronDown).icon,
                      size: 20,
                      color: kPrimaryButtonColorDark,
                    ),
              iconColor: Colors.black,
              textColor: kSecondaryTextColorDark,
              expandedAlignment: Alignment.centerLeft,
              childrenPadding: EdgeInsets.only(left: 20),
              expandedCrossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
