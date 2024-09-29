import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final AssetImage image;
  final String heading;
  final String subheading;
  final String price;
  const Cart(
      {super.key,
      required this.image,
      required this.heading,
      required this.subheading,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.2), width: 1))),
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            width: 70,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                subheading,
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                price,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40, left: 150),
                child: Icon(
                  Icons.cancel_outlined,
                  color: const Color(0xff00000040).withOpacity(0.25),
                ),
              ),
              Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF2F4FF),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.remove_circle,
                      size: 30,
                      color: Color(0xffDFE3FF),
                    ),
                    Text("1"),
                    Icon(
                      Icons.add_circle,
                      size: 30,
                      color: Color(0xffA0ABFF),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
