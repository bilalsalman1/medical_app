import 'package:flutter/material.dart';
import 'package:medical_app/app_colors.dart';

import 'package:medical_app/product_item.dart';
import 'package:medical_app/screen/deatailed_screen.dart';
import 'package:medical_app/screen/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 213,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColors.containerStartGrad,
                      AppColors.containerEndGrad,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32, left: 27, right: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const ProfileScreen()));
                        },
                        child: Container(
                          height: 52,
                          width: 53,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/my.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 42,
                                width: 43,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/profile.png')),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Icon(
                                Icons.nat,
                                size: 24,
                                color: AppColors.iconsColor,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFF0000),
                                      borderRadius: BorderRadius.circular(6)),
                                  constraints: const BoxConstraints(
                                      minHeight: 12, minWidth: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Icon(Icons.shopping_bag_outlined,
                              size: 24, color: AppColors.iconsColor),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 97, left: 28),
                  child: Text(
                    'Hi, Shahzeb',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                        fontFamily: 'Overpass'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130, left: 27),
                  child: Text(
                    'Welcome to Quick Medical Store',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                        fontFamily: 'Overpass'),
                  ),
                ),
                Positioned(
                  top: 61,
                  left: -211,
                  child: Container(
                    height: 412,
                    width: 412,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.circleColor),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 189, bottom: 12),
                  child: Center(
                    child: SizedBox(
                      width: 327,
                      height: 50,
                      child: SearchBar(
                        hintText: 'Search Medicine & Healthcare products',
                        hintStyle: WidgetStatePropertyAll(
                          TextStyle(
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 20),
              child: Text(
                'Top Categories',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  height: 130,
                  width: 100.17,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    elevation: 2,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFF70A7),
                                        Color(0xffFF9598),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35))),
                              height: 62,
                              width: 62,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 05),
                          child: Text(
                            'Dental',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: 100.17,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    elevation: 2,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff19E5A5),
                                        Color(0xff15BD92),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35))),
                              height: 62,
                              width: 62,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 05),
                          child: Text(
                            'Wellness',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: 100.17,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    elevation: 2,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFFC06F),
                                        Color(0xffFF793A),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35))),
                              height: 62,
                              width: 62,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 05),
                          child: Text(
                            'Homeo',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: 100.17,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    elevation: 2,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff4DB7FF),
                                        Color(0xff3E7DFF),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35))),
                              height: 62,
                              width: 62,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 05),
                          child: Text(
                            'Eye care',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Stack(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/Mask.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Save extra on\nevery order',
                        style: TextStyle(
                            color: Color(0xff1987FB),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 90),
                      child: Text(
                        'Etiam mollis metus\n non faucibus . ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 142, 141, 141),
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23, top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deals of the Day',
                    style: TextStyle(
                        color: Color(0xff090F47),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                        color: Color(0xff006AFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DeatailedScreen()));
                        },
                        child: const ProductItem()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DeatailedScreen()));
                        },
                        child: const ProductItem()),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DeatailedScreen()));
                        },
                        child: const ProductItem()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 22,
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DeatailedScreen()));
                        },
                        child: const ProductItem()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
