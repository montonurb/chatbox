// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  final double radius;
  final String urlImage;
  final bool isOnline;

  const UserImageWidget({
    Key? key,
    required this.radius,
    required this.urlImage,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: radius,
          foregroundImage: NetworkImage(urlImage),
        ),
        Positioned(
          bottom: -4,
          right: -4,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                  color: isOnline ? Colors.green : Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(isOnline ? Icons.check : Icons.do_not_disturb_off),
              ),
            ),
          ),
        )
      ],
    );
  }
}
