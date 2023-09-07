import 'package:new1/model/recommendedmodel.dart';

class RecommendedProduct{

  static List products = [
    RecommendedModel(name: 'Fresh Lemon', category: 'Organic', price: '18'),
    RecommendedModel(name: 'Cabbage', category: 'Organic', price: '08'),
    RecommendedModel(name: 'Mint', category: 'Organic', price: '12'),
  ];

  static RecommendedModel getStatusItem(int position) {
    return products[position];
  }

  static var itemCount = products.length;

}
