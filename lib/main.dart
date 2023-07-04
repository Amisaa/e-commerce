


import 'package:ecommerce_app/features/onboard/presentation%20/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyEcommerceApp());
}

class  MyEcommerceApp extends StatelessWidget {
  const MyEcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(primarySwatch: Colors.red),

        home: OnBoardScreen(),


    );
  }
}

