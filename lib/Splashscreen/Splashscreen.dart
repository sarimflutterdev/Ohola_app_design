import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oloha/Custom_Classes/CustomColor.dart';

import '../onboarding/onboardingscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4),
            () => Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),)));
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color:AppColor.bodycolor,
          border: Border.all(color:Colors.white,width: 0.9)

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                ),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/bgsplash.png',),
                ),
                ),
                Text('Oloha',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 36),)
            ],
          ),
        ),
      ),
    );
  }
}
