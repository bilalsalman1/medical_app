import 'package:flutter/material.dart';

class Productps extends StatelessWidget {
  final Color color;
  final String text;
  final Color textcolor;
  final String subtext;
  final Color subtextcolor;

  const Productps({
    super.key,
    required this.color,
    required this.text,
    required this.textcolor,
    required this.subtext,
    required this.subtextcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 23),
      height: 72,
      width: 82,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffF5F5F5),
          border: Border.all(width: 1.5, color: color)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
                color: textcolor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtext,
            style: TextStyle(
                color: subtextcolor, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
