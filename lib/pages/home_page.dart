import 'package:chatbox/widgets/contact_list_widget.dart';
import 'package:chatbox/widgets/home_appbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: HomeAppBarWidget(
                userName: "Bruno",
                countMessage: 23,
                logoutFunction: logout,
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                child: ContactListWidget(
                  sizeContactList: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
