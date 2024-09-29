import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final IconData icons;
  final IconData subIcon;
  final String text;

  const Profile(
      {super.key,
      required this.icons,
      required this.subIcon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icons),
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(subIcon),
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Divider(),
        )
      ],
    );
  }
}
