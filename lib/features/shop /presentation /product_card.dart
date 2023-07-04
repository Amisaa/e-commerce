
import 'package:flutter/material.dart';

class ShopProduct extends StatelessWidget {
  const ShopProduct({super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice});

  final String productImage;
  final String productTitle;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12.0) ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,

          child: Column(
            children: [
              Expanded(child: Image.asset(productImage,)),
              Text(productTitle),
              Text(productPrice)
            ],
          ),
        ),
      )




    );
  }
}
