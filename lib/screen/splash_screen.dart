import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/app_colors.dart';
import 'package:medical_app/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.gradientStartColor,
            AppColors.gradientendColor,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          image: const DecorationImage(
            image: AssetImage('assets/images/logo_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Quick Medical',
                style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100,
                    color: AppColors.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
