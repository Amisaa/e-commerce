/*
1. write stless and press enter
2. write the name of class same as file name but write in PascalCase
3. import the material package
4. replace const placeholder
5. write your code in the body which is inside the scaffold
return scaffold(
body: Text('');
 */



import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(),
        body:Text("This is cart page")
      ),
    );
  }
}
