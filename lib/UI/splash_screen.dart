import 'dart:async';

import 'package:fast_food_order/UI/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body:
          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Image(
                height: 2000,
                width: 1000,
                image: AssetImage('images/food1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
    );
  }
}



          //Spacer(),
          // Container(
          //   height: 150,
          //   width: 300,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.orange,
          //       gradient: const LinearGradient( // Use Gradient color
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //           Color(0xFFFF6F00),
          //           Color(0xFFFFA000),
          //         ],
          //       )
          //   ),
          //   child: const Center(
          //       child: Text(
          //     "If you are Hungry! \n \n Welcome to Our Fast Food",
          //     style: TextStyle(
          //       color: Colors.green,
          //       fontSize: 25,
          //       fontStyle: FontStyle.italic,
          //       fontWeight: FontWeight.w500,
          //     ),
          //     textAlign: TextAlign.center,
          //   )),
          // ),


