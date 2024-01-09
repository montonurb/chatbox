// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chatbox/widgets/user_image_widget.dart';

class StatusCardWidget extends StatelessWidget {
  final bool isOnline;
  final String urlImage;
  final String userName;

  const StatusCardWidget({
    Key? key,
    required this.isOnline,
    required this.urlImage,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      children: [
        UserImageWidget(
          radius: size.width * 0.085,
          urlImage: urlImage,
          isOnline: isOnline,
        ),
        const SizedBox(height: 12),
        Text(
          "$userName",
          style: theme.primaryTextTheme.bodyMedium,
        ),
      ],
    );
  }
}
