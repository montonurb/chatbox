// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  final String userName;
  final int countMessage;
  final VoidCallback logoutFunction;

  const HomeAppBarWidget({
    Key? key,
    required this.userName,
    required this.countMessage,
    required this.logoutFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, $userName",
                style: theme.primaryTextTheme.bodyMedium,
              ),
              Text(
                "You received",
                style: theme.primaryTextTheme.titleLarge,
              ),
              Text(
                "$countMessage messages",
                style: theme.primaryTextTheme.headlineSmall,
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: theme.primaryIconTheme.color,
            ))
      ],
    );
  }
}
