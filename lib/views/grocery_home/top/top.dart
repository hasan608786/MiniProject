import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';
import '../../../widgets/cart_icon.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      color: AppColor.lightBlueColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 55, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Hey, Hasan',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    CartIcon(),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(

                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Search Product or Store',
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      fillColor: Color(0xff153075),
                      filled: true,

                      focusColor: Colors.transparent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      'DELIVERY TO',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.grey),
                    ),
                    Spacer(),
                    Text('WITHIN', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
                const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Bahadurabad,Karachi.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '1 Hour',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
