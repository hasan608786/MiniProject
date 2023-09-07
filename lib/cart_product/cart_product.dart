import 'package:flutter/material.dart';

import 'cart_model.dart';

class CartProducts {
 static List cartProduct = [];

 static Map getStatusItem(int position) {
  return cartProduct[position];
 }

 static var itemCount = cartProduct.length;

}