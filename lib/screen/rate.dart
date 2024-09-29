import 'package:flutter/material.dart';
import 'package:medical_app/model/color.dart';

class Rate extends StatelessWidget {
  final String text;
  final String subtext;
  final double width;
  const Rate(
      {super.key,
      required this.width,
      required this.text,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 19, color: Color(0xff090F4773).withOpacity(0.45)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 7),
          child: Icon(
            Icons.star,
            color: Color(0xffFFD040),
            size: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 6),
          child: Stack(
            children: [
              Container(
                height: 4,
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 160, 160, 160),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                height: 4,
                width: width,
                decoration: BoxDecoration(
                    color: Appcolors.bluecol,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
        ),
        Text(
          subtext,
          style: TextStyle(
              fontSize: 18, color: Color(0xff090F4773).withOpacity(0.45)),
        ),
      ],
    );
  }
}
