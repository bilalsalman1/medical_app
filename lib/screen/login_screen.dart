import 'package:flutter/material.dart';

import 'package:medical_app/model/color.dart';
import 'package:medical_app/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 76,
                width: 76,
                child: Card(
                  elevation: 2,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Image(
                    image: AssetImage(
                      'assets/images/Vector.png',
                    ),
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Quick Medical',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90, right: 40),
                height: 48,
                width: 255,
                child: const Text(
                  'Please Enter your Mobile Number to Login/Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 39, left: 34, right: 34),
                height: 44,
                width: 299,
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(14)),
                child: const TextField(
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+91 9265614292',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const HomeScreen()));
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 45, left: 22, right: 22),
                    height: 45,
                    width: 330.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Appcolors.bluecol),
                    child: const Center(
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
