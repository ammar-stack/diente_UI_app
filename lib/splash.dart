import 'dart:async';

import 'package:diente/mainpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), movetoscreen);
  }
  void movetoscreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainPage()));
  }
  @override
  Widget build(BuildContext context) {
    return const   Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/diente.png'),height: 150,width: 350,)
        ],
      )),
    );
  }
}
