import 'package:ecommerce_app/features/shop%20/presentation%20/product_card.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
   ProductList(this.images,this.detailNumber,this.price);

  List<String> images;
  List<String> detailNumber;
  List<String> price;


  /*TODO 4. receive the list of products here ,
    we receive the list in constructor */
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,    //this is making a grid in the app ie silvergrid
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1
        ),

        itemCount: 10,

        itemBuilder: (context,index){
          /* TODO 5. pass the single image here */
          return ShopProduct(
            productImage:images[index],
            productTitle:detailNumber[index],
            productPrice:price[index],
          );
        }
    );
  }
}
