// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chatbox/widgets/status_card_widget.dart';

class ContactListWidget extends StatelessWidget {
  final int sizeContactList;

  const ContactListWidget({
    Key? key,
    required this.sizeContactList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(style: theme.primaryTextTheme.bodyMedium, children: [
            TextSpan(
              text: "Contact ",
              style: theme.primaryTextTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: "List"),
          ]),
        ),
        const SizedBox(height: 12.0),
        Expanded(
          child: ListView.separated(
            itemCount: sizeContactList,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(width: 16.0),
            itemBuilder: (_, index) {
              return StatusCardWidget(
                isOnline: index.isEven,
                urlImage:
                    "https://avatars.githubusercontent.com/u/32364131?v=4",
                userName: "Bruno",
              );
            },
          ),
        ),
      ],
    );
  }
}
