
import 'package:ecommerce_app/features/shop%20/presentation%20/product_card.dart';
import 'package:ecommerce_app/features/shop%20/presentation%20/product_list.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  List<String> dollImage = ['assets/images/doll/dollone.jpg',
    'assets/images/doll/dolltwo.jpg',
    'assets/images/doll/dollthree.jpg',
    'assets/images/doll/dollfour.jpg',
    'assets/images/doll/dollfive.jpg',
    'assets/images/doll/dollsix.jpg',
    'assets/images/doll/dollseven.jpg',
    'assets/images/doll/dolleight.jpg',
    'assets/images/doll/dollnine.jpg',
    'assets/images/doll/dollten.jpg',
  ];
  List<String> detailNumber = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  List<String> price = ['100', '200', '300', '400', '500', '600', '700', '800',
    '900',
    '1000'
  ];
  List<String> chocoImage = [
    'assets/images/chocolate/choco1.png',
    'assets/images/chocolate/choco2.png',
    'assets/images/chocolate/choco3.png',
    'assets/images/chocolate/choco4.png',
    'assets/images/chocolate/choco5.png',
    'assets/images/chocolate/choco6.png',
    'assets/images/chocolate/choco7.png',
    'assets/images/chocolate/choco8.png',
    'assets/images/chocolate/choco9.png',
    'assets/images/chocolate/choco10.png',
  ];


  //List<ProductData>  productData  = [
    //ProductData(title : "", price : "", image : ""),
    //ProductData(title : "", price : "", image : ""),
  //];

  List<String> flowerName = [
    'assets/images/flower/flower1.jpg',
    'assets/images/flower/flower2.jpg',
    'assets/images/flower/flower3.jpg',
    'assets/images/flower/flower4.jpg',
    'assets/images/flower/flower5.jpg',
    'assets/images/flower/flower6.jpg',
    'assets/images/flower/flower7.jpg',
    'assets/images/flower/flower8.jpg',
    'assets/images/flower/flower9.jpg',
    'assets/images/flower/flower10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        //length gives the number of tabs that can be opened in the tab bar
        child: Scaffold(
          appBar: AppBar(title: Text("Shop Page"),),
          //keyvalue comma le separate huncha

          body: Column(
            children: [
              /*tab bar gives the no of tabs */
              TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: "Dolls", icon: Icon(Icons.add_box_rounded),),
                    Tab(text: "chocolates", icon: Icon(Icons.bakery_dining),),
                    Tab(text: "flowers", icon: Icon(Icons.rectangle_outlined),),
                  ]
              ),

              Expanded(
                child: TabBarView(
                    children: [

                      /*1. Todo pass the list of dolls here*/
                      ProductList(this.dollImage,this.detailNumber,this.price),
                        //productData.map((e) => e.image).toList(),
                        //productData.map((e) => e.title).toList(),
                        //productData.map((e) => e.price).toList(),



                      /* 2.Todo pass the list of chocolate here */
                      ProductList(this.chocoImage,this.detailNumber,this.price),

                      /*3.todo pass the list of flowers here*/
                      ProductList(this.flowerName,this.detailNumber,this.price),

                    ]
                ),
              ),
            ],
          ),
        )

    );
  }
}

// class ProductData {
//
//
//   ProductData({required this.image, required this.title, required this.price});
//
//   final String image, title, price;
//
//
// }
/*create this in model class differently so that code can be in more detail
* all the commented part should be used while using the figure differently */
