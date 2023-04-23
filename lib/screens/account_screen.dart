import 'package:course_ui_components/utils/navigations.dart';
import 'package:course_ui_components/widgets/account_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(user),
                      backgroundColor: kPrimaryButtonColorDark,
                      radius: 40.0,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Text(
                      "Hashan Ranasinghe",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "test@gmail.com",
                      style: TextStyle(
                          fontSize: 15, color: kSecondaryTextColorDark),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.04,
                          horizontal: screenWidth * 0.02),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            AccountListTile(
                                title: "About Us",
                                onPress: () {
                                  openAbout(context);
                                },
                                icon:
                                    FaIcon(FontAwesomeIcons.addressBook).icon),
                            AccountListTile(
                                title: "Visit Our site",
                                onPress: () {},
                                icon: FaIcon(FontAwesomeIcons.googleWallet).icon),
                            AccountListTile(
                                title: "Log Out",
                                onPress: () {},
                                icon: FaIcon(FontAwesomeIcons.signOut).icon)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.02),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            AccountListTile(
                                title: "FAQ",
                                onPress: () {
                                  openFaq(context);
                                },
                                icon: FaIcon(FontAwesomeIcons.question).icon),
                            AccountListTile(
                                title: "About App",
                                onPress: () {},
                                icon: FaIcon(FontAwesomeIcons.heartCircleBolt)
                                    .icon)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
