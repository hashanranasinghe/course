import 'package:course_ui_components/utils/constants.dart';
import 'package:course_ui_components/utils/navigations.dart';
import 'package:course_ui_components/widgets/popup_dialog.dart';

import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({
    Key? key,
  }) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    //final user = FirebaseAuth.instance.currentUser;

    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: kPrimaryButtonColorDark),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(user),
              ),
              accountName: const Text(""),
            ),

            Card(
              elevation: 0,
              child: ListTile(
                leading: const Icon(
                  Icons.touch_app_rounded,
                  color: kPrimaryButtonColorDark,
                ),
                title: const Text('Requests'),
                onTap: () async {},
              ),
            ),

            Card(
              elevation: 0,
              child: ListTile(
                leading: const Icon(
                  Icons.email_outlined,
                  color: kPrimaryButtonColorDark,
                ),
                title: const Text('Contact Us'),
                onTap: () async {
                  openEmail(context);
                },
              ),
            ),
            // : Container(),
            Card(
              elevation: 0,
              child: ListTile(
                  leading: const Icon(
                    Icons.account_box_outlined,
                    color: kPrimaryButtonColorDark,
                  ),
                  title: const Text('About Us'),
                  onTap: () {}),
            ),
            // Card(
            //   elevation: 0,
            //   child: ListTile(
            //       leading: const Icon(
            //         Icons.dashboard_customize,
            //         color: kPrimaryColordark,
            //       ),
            //       title: const Text('Test'),
            //       onTap: () {
            //         opentest(context);
            //       }),
            // ),

            Card(
              elevation: 0,
              child: ListTile(
                leading: const Icon(
                  Icons.logout_rounded,
                  color: kPrimaryButtonColorDark,
                ),
                title: const Text('Logout'),
                onTap: () {
                  PopupDialog.showPopupLogout(
                      context, "Signout", "Do you want to signout ? ",
                      () async {
                    //await SigninManager().signOut();
                    print("logingout");
                  });
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
