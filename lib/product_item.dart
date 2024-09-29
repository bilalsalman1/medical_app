import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 140,
              width: 158,
              color: Color(0xffEEEEF0),
              child: const Image(image: AssetImage('assets/images/pr.png'))),
          const Padding(
            padding: EdgeInsets.only(left: 7, top: 7),
            child: Text(
              'Accu-check Active \nTest Strip ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7, top: 5),
            child: Text(
              'Rs.112',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 120, bottom: 20),
            height: 22.94,
            width: 42.64,
            decoration: const BoxDecoration(
                color: Color(0xffFFC000),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 5),
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
