import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';

class CategoryGrid extends StatelessWidget {

  final String name;
  final String category;

  CategoryGrid({super.key, required this.name, required this.category});

  List<Map> organicProducts = [
    {'name': 'Fishes', 'category': 'From Sea'},
    {'name': 'Meats', 'category': 'Organic'},
    {'name': 'Vegetables', 'category': 'Organic'},
    {'name': 'Fruits', 'category': 'Fresh & Organic'},
    {'name': 'Fishes', 'category': 'From Sea'},
    {'name': 'Meats', 'category': 'Organic'},
    {'name': 'Vegetables', 'category': 'Organic'},
    {'name': 'Fruits', 'category': 'Fresh & Organic'},
  ];

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: organicProducts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(-4, 5))
              ],
              color: AppColor.productBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            top: 25,
                          ),
                          child: Center(
                              child: Image.asset('assets/images/Icon.png')),
                        ),
                        const Spacer(),
                        const Divider(
                          height: 5,
                          thickness: 2,
                        ),
                        const Spacer(),
                        Text(
                          organicProducts[index]['name'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(organicProducts[index]['category']),
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  }
}

