import 'package:flutter/material.dart';
import 'package:medical_app/screen/profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: SizedBox(
              height: 63,
              width: 62,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/my.jpg'),
              ),
            ),
            title: Text(
              'Hi, Bilal Salman',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              'Welcome to  Quick Medical Store',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Profile(
                icons: Icons.note_outlined,
                subIcon: Icons.arrow_right_outlined,
                text: 'Edit Profile'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Profile(
                icons: Icons.note_outlined,
                subIcon: Icons.arrow_right_outlined,
                text: 'My orders'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Profile(
                icons: Icons.punch_clock,
                subIcon: Icons.arrow_right_outlined,
                text: 'Billing'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Profile(
                icons: Icons.note_outlined,
                subIcon: Icons.arrow_right_outlined,
                text: 'Faq'),
          ),
        ],
      ),
    );
  }
}
