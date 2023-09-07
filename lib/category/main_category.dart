import 'package:flutter/material.dart';
import 'package:new1/category/category/category.dart';
import 'package:new1/category/top/top.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CategoryTop(),
            CategoryGrid(category: '',name: ''),
          ],
        ),
      ),
    );
  }
}
