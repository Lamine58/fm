// ignore_for_file: sort_child_properties_last, library_private_types_in_public_api
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:fm/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  init() async {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home(0)));
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      init();
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff015cae), Color(0xff003b73)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(
                child:  Image.asset(
                  'assets/images/logo.png',
                  width: 200
                ),
                duration: const  Duration(seconds: 2)
              )
            ],
          ),
        ),
      ),
    );
  }
}
