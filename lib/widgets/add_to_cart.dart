import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';
import '../../cart_product/cart_product.dart';
import '../model/recommended_product.dart';

class AddToCart extends StatefulWidget {
  final String name;
  final String price;
  final String category;
  const AddToCart(
      {super.key,
      required this.name,
      required this.price,
      required this.category,});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        [
          CartProducts.cartProduct.add({'name' :widget.name, 'category' :widget.category,'price' :widget.price,}),
        ];

        if (kDebugMode) {
          print(CartProducts.cartProduct);
        }
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(-2, 2.5))
            ],
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xff2A4BA0)),
        child: const Center(
            child: Text('+', style: TextStyle(color: Colors.white))),
      ),
    );
  }
}

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColor.lightYellowColor,
            height: 270,
            width: MediaQuery.of(context).size.width,
            child:
            Stack(
              children: [
                Image.asset('assets/icon/#.png'),
                Positioned(
                    bottom: 65,
                    right: 55,
                    child: Image.asset('assets/icon/25%.png')),
                Positioned(
                    bottom: 150,
                    right: 55,
                    child: Image.asset('assets/icon/OFF!!.png')),
                Positioned(
                    bottom: 170,
                    right: 55,
                    child: Image.asset('assets/icon/Vector 368.png')),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios_sharp, size: 15),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      const SizedBox(width: 25),
                      Text('Shopping Cart(${CartProducts.cartProduct.length})',
                          style: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w500,
                              fontSize: 17)),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: AppColor.yellowColor,
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: Text("Use code #HalalFood at Checkout",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                          ) //TextStyle
                          ),
                    ), //Text
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
            child: SizedBox(
              height: 270,
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: CartProducts.cartProduct.length,
                itemBuilder: (context, index)
                =>
                        Row(
                          children: [
                            Image.asset('assets/images/Icon.png',height: 50),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(CartProducts.cartProduct[index]['name'],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                Text('\$'+CartProducts.cartProduct[index]['price'],style: const TextStyle(fontSize: 18,fontWeight: FontWeight.normal)),
                              ],
                            ),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                            Text('0'),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          ],
                        ),
                      ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar1(),
    );

     }
  }


class BottomAppBar1 extends StatelessWidget {
  const BottomAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 25,left: 25,bottom: 10),
            child:
            Row(
              children: [
                Text('Subtotal',style: TextStyle(fontSize: 18,color: Colors.grey.shade600)),
                const Spacer(),
                // Text('\$'+ '${
                //     (CartProducts.cartProduct[0]['price'] as int) *
                //      ( CartProducts.cartProduct[0]['price'])
                // }',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 25,left: 25,bottom: 10),
            child:
            Row(
              children: [
                Text('Delivery',style: TextStyle(fontSize: 18,color: Colors.grey.shade600)),
                const Spacer(),
                const Text("\$2.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 25,left: 25,bottom: 10),
            child:
            Row(
              children: [
                Text('Total',style: TextStyle(fontSize: 18,color: Colors.grey.shade600)),
                const Spacer(),
                const Text("\$41.50",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(20)),
              child: const Center(child: Text('Proceed To Checkout',style: TextStyle(color: Colors.white))),
            ),
          )
        ]),
      ),
    );
  }
}
