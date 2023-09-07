import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../views/widgets/cart_icon.dart';

class CategoryTop extends StatefulWidget {
  const CategoryTop({super.key});

  @override
  State<CategoryTop> createState() => _CategoryTopState();
}

class _CategoryTopState extends State<CategoryTop> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        setState(() {
          selected = true;
        });
      },
      child: Container(
        height: 265,
        color: AppColor.lightBlueColor,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 20, left: 20, top: 55, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: selected
                            ? const Icon(Icons.search,color: Colors.white,)
                            : SizedBox(
                          width: MediaQuery.of(context).size.width*0.50,
                              child: const TextField(
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Search Product or Store',
                                      fillColor: Color(0xff153075),
                                      filled: true,
                                      focusColor: Colors.transparent,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)))),
                                ),
                            ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      CartIcon(),
                      // Badge(
                      //   backgroundColor: AppColor.yellowColor,
                      //   alignment: AlignmentDirectional.topEnd,
                      //   largeSize: 15,
                      //   textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                      //   textColor: Colors.yellow,
                      //   label: Text("22"),
                      //   isLabelVisible: true,
                      //   child: Icon(Icons.shopping_cart,color: Colors.white),
                      // ),
                    ],
                  ),
                  const Spacer(),
                  const Text('Shop',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                  const Spacer(),
                  const Text('By Category',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
