import 'package:flutter/material.dart';
import 'package:medical_app/app_colors.dart';
import 'package:medical_app/screen/cart_screen.dart';
import 'package:medical_app/screen/productps.dart';
import 'package:medical_app/screen/rate.dart';
import '../model/color.dart';

class DeatailedScreen extends StatelessWidget {
  const DeatailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(
                    color: Color(0xff090F47),
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 23, top: 10),
              child: Text(
                'Etiam mollis metus non purus ',
                style: TextStyle(
                    color: Color(0xff090F47),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        'assets/images/prod.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        'assets/images/prod.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        'assets/images/prod.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
                child: Icon(
              Icons.more_horiz,
              size: 40,
              color: Colors.grey,
            )),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Text(
                            'Rs.99',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Color.fromARGB(255, 184, 184, 184),
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Rs.56',
                            style: TextStyle(
                                color: Color(0xff090F47),
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        'Etiam mollis',
                        style: TextStyle(
                            color: Color(0xff090F47),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 23),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: Appcolors.bluecol,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Appcolors.bluecol,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 23),
              child: Divider(
                thickness: 1,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                'Package size',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Productps(
                  color: Appcolors.orangecol,
                  text: 'Rs.106',
                  textcolor: Appcolors.orangecol,
                  subtext: '500 pellets',
                  subtextcolor: Appcolors.orangecol,
                ),
                Productps(
                    color: Colors.grey,
                    text: 'Rs.166',
                    textcolor: Colors.black,
                    subtext: '110 pellets',
                    subtextcolor: Colors.black),
                Productps(
                    color: Colors.grey,
                    text: 'Rs.252',
                    textcolor: Colors.black,
                    subtext: '300 pellets',
                    subtextcolor: Colors.black),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 10),
              child: Text(
                'Product Details',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 20),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis\nin faucibus. Morbi ut nisi odio. Nulla facilisi.\nNunc risus massa, gravida id egestas a, pretium vel\ntellus. Praesent feugiat diam sit amet pulvinar\nfinibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 182, 181, 181)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 10),
              child: Text(
                'Ingredients',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 20),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis\nin faucibus. Morbi ut nisi odio. Nulla facilisi.\nNunc risus massa, gravida id egestas a, pretium vel\ntellus. Praesent feugiat diam sit amet pulvinar\nfinibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 182, 181, 181)),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23, top: 10),
                  child: Text(
                    'Expire Date',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23, top: 10),
                  child: Text(
                    '25/12/2023',
                    style: TextStyle(
                        color: Color.fromARGB(255, 182, 181, 181),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23, top: 10),
                  child: Text(
                    'Brand Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23, top: 10),
                  child: Text(
                    'Something',
                    style: TextStyle(
                        color: Color.fromARGB(255, 182, 181, 181),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "4.4",
                            style: TextStyle(
                                fontSize: 33, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFC000),
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "923 Ratings\nand 257 Reviews",
                        style: TextStyle(
                            color: Color(0xff090F47).withOpacity(0.4),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        height: 120,
                        color: Color(0xff090F47).withOpacity(0.4),
                        width: 2,
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Rate(width: 80, text: '4', subtext: '67%'),
                      Rate(width: 40, text: '4', subtext: '20%'),
                      Rate(width: 0, text: '3', subtext: '7%'),
                      Rate(width: 0, text: '2', subtext: '0%'),
                      Rate(width: 20, text: '1', subtext: '2%'),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 10),
              child: Text(
                'Erric Hoffman',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, top: 05),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis\nin faucibus. Morbi ut nisi odio. Nulla facilisi.\nNunc risus massa, gravida id egestas ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 182, 181, 181)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const CartScreen()));
              },
              child: Container(
                  margin: const EdgeInsets.only(
                      top: 45, left: 23, right: 23, bottom: 20),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Appcolors.bluecol),
                  child: const Center(
                    child: Text(
                      'Go TO Cart',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
