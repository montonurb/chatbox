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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: HomeAppBarWidget(
            userName: "Bruno",
            countMessage: 23,
            logoutFunction: logout,
          ),
        ),
      ),
    );
  }
}
