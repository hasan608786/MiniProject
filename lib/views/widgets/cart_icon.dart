import 'package:flutter/material.dart';
import 'package:new1/views/widgets/add_to_cart.dart';

import '../../constant/colors.dart';

class CartIcon extends StatelessWidget {
  Color? color ;
  CartIcon({this.color,super.key});

  List cart = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddToCartScreen(),));
          },
          child: Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/icon/cart.png', color: color,),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: AppColor.yellowColor,
            radius: 8,
            child: Text('0',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
