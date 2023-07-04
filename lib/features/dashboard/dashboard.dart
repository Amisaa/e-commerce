import 'package:ecommerce_app/features/cart/presentation%20/cart_page.dart';
import 'package:ecommerce_app/features/home%20/presentation%20/home_page.dart';
import 'package:ecommerce_app/features/profile%20/presentation%20/profile_page.dart';
import 'package:ecommerce_app/features/shop%20/presentation%20/shop_page.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int  currentPageNumber=0;
  List <Widget> pages=[
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentPageNumber],

      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
        onTap: (int index){
        setState(() {
          currentPageNumber=index;
        });
        },
        currentIndex: currentPageNumber,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color:Colors.red),label:"Home",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.shop, color:Colors.red),label:"Shop",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp, color:Colors.red),label:"Cart",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.person, color:Colors.red),label:"Profile",backgroundColor: Colors.black),
      ],),
    );
  }
}
