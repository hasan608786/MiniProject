// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new1/model/recommendedmodel.dart';
import 'package:new1/views/grocery_home/recommended/product_design.dart';

import '../../../model/recommended_product.dart';

class RecommendedScreen extends StatefulWidget {
  final String name;
  final String category;
  final String price;
  const RecommendedScreen(
      {super.key,
      required this.name,
      required this.category,
      required this.price});

  @override
  State<RecommendedScreen> createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 250,
        child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: RecommendedProduct.itemCount,
        itemBuilder: (context, index) {
          RecommendedModel model = RecommendedProduct.getStatusItem(index);
          return ProductDesign(name: model.name, category: model.category, price: model.price);
        }
    ),
      );
  }
}
