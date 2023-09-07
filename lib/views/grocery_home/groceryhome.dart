import 'package:flutter/material.dart';
import 'package:new1/views/grocery_home/recommended/recommended.dart';
import 'package:new1/views/grocery_home/top/top.dart';

import '../widgets/bottomnavbar/bottomnavbar.dart';
import 'offers/offers.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Top(),
              Offers(discount: '', discountCondition: ''),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
              ),
              RecommendedScreen(
                name: '',
                category: '',
                price: '',
              ),
              RecommendedScreen(
                name: '',
                category: '',
                price: '',
              ),
              RecommendedScreen(
                name: '',
                category: '',
                price: '',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
