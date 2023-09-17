import 'package:flutter/material.dart';
import 'package:new1/cart_product/cart_product.dart';
import 'package:new1/views/widgets/add_to_cart.dart';

import '../../constant/colors.dart';

class CartIcon extends StatefulWidget {
  Color? color ;
  CartIcon({this.color,super.key});

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  List cart = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToCartScreen(),));
          },
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('assets/icon/cart.png',filterQuality: FilterQuality.high, color: widget.color,),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: AppColor.yellowColor,
            radius: 8.5,
            child: Text('${CartProducts.cartProduct.length}',style: const TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
