import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: AppColor.yellowColor,),
        Icon(Icons.star,color: AppColor.yellowColor,),
        Icon(Icons.star,color: AppColor.yellowColor,),
        Icon(Icons.star,color: AppColor.yellowColor,),
        Icon(Icons.star,),
        SizedBox(width: 5,),
        Text('133 Reviews',style: TextStyle(fontSize: 16,color: Colors.grey),)
      ],
    );
  }
}
