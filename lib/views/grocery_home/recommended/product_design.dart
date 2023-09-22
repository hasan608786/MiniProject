import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../widgets/add_to_cart.dart';
import '../../detail_screen/detail_screen.dart';

class ProductDesign extends StatefulWidget {
  final String name;

  final String category;

  final String price;

  const ProductDesign(
      {super.key,
      required this.name,
      required this.category,
      required this.price});

  @override
  State<ProductDesign> createState() => _ProductDesignState();
}

class _ProductDesignState extends State<ProductDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return DetailScreen(
                  name: widget.name,
                  category: widget.category,
                  price: widget.price);
            },
          ));
        },
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          top: 25,
                        ),
                        child: Center(
                            child: Image.asset('assets/images/Icon.png')),
                      ),
                      const Divider(),
                      Text(
                        widget.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(widget.category),
                      const Spacer(),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: const Offset(-2, 2.5))
                            ],
                            color: AppColor.whiteButtonColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(children: [
                            const Text('Unit',
                                style: TextStyle(color: Colors.grey)),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("\$${widget.price}"),
                            const Spacer(),
                            AddToCart(
                                name: widget.name,
                                price: widget.price,
                                category: widget.category)
                          ]),
                        ),
                      ),
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
