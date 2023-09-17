
import 'cart_model.dart';

class CartProducts {
 static List cartProduct = [];

 static CartModel getStatusItem(int position) {
  return cartProduct[position];
 }

 static var itemCount = cartProduct.length;

}