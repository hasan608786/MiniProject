import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Offers extends StatelessWidget {
  String discount;

  String discountCondition;

  Offers({super.key, required this.discount, required this.discountCondition});

  List<Map> offers = [
    {'discount': '50% OFF', 'discountCondition': 'On first 03 order'},
    {'discount': '30% OFF', 'discountCondition': 'On order above RS3000'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: offers.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(-4, 5))
              ],
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xffF9B023),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                          'https://cdn-icons-png.flaticon.com/512/869/869445.png',
                          width: 60),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Get',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w300),
                          ),
                          const Spacer(),
                          Text(
                            offers[index]['discount'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            offers[index]['discountCondition'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
