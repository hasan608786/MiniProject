import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';
import 'package:new1/favorite/favorite_screen.dart';

import '../../widgets/cart_icon.dart';
import '../../widgets/rating_star.dart';

class DetailScreen extends StatefulWidget {
  final String name, category, price;
  const DetailScreen(
      {super.key,
      required this.name,
      required this.category,
      required this.price});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  bool isExpand = true;
  bool isExpand1 = true;
  bool isExpand2 = true;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: AppColor.blueColor)),
                child: Center(child: Text('Add to Cart',style: TextStyle(fontSize: 18,color: AppColor.blueColor),)),
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColor.blueColor),
                child: const Center(child: Text('Buy Now',style: TextStyle(fontSize: 18,color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 100,
            snap: false,
            pinned: false,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Image.asset('assets/images/Icon.png'),
              ),
            ), //FlexibleSpaceBar
            expandedHeight: 350,
            actionsIconTheme: const IconThemeData(color: Colors.lightBlue,weight: 5),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: CartIcon(color: Colors.black),
              )
            ],
            title: Text(widget.name,style: const TextStyle(color: Colors.black)),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
          SliverFillViewport(delegate: SliverChildListDelegate.fixed(
            [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    color: Colors.grey.shade200,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Thin Choice Top \n${widget.name}',style: const TextStyle(fontSize: 34,fontWeight: FontWeight.bold)),
                                Spacer(),
                                IconButton(onPressed: (){
                                  FavoriteScreen.favorite.add(
                                      {'name': widget.name,'price': widget.price,});
                                  setState(() {
                                    favorite = !favorite;
                                  });
                                }, icon: favorite==false? Icon(Icons.favorite_border): Icon(Icons.favorite,color: Colors.red,))
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text("\$${widget.price}/KG",style: TextStyle(color: AppColor.blueColor,fontSize: 20,fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  height: 30,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: AppColor.blueColor,
                                      borderRadius: const BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: const Center(child: Text("\$22 OFF",style: TextStyle(letterSpacing: 2,color: Colors.white,fontSize: 15)))),
                                const Spacer(),
                                const Text("Reg: \$56.50 USD",style: TextStyle(color: Colors.grey,fontSize: 18)),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            const RatingStar(),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                const Text('Detail',style: TextStyle(fontSize: 20),),
                                const Spacer(),
                                IconButton(onPressed: () {
                                  isExpand;
                                  setState(() {
                                    isExpand = !isExpand;
                                  });
                                },
                                    icon:  !isExpand ? const Icon(Icons.expand_less,size: 40,color: Colors.grey) : const Icon(Icons.expand_more,size: 40,color: Colors.grey))
                              ],
                            ),
                            !isExpand ? const Text("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",style: TextStyle(color: Colors.grey,fontSize: 18),) : const Divider(color: Colors.grey,height: 20,thickness: 1.5,),
                            Row(
                              children: [
                                const Text('Nutritional facts',style: TextStyle(fontSize: 20),),
                                const Spacer(),
                                IconButton(onPressed: () {
                                  isExpand1;
                                  setState(() {
                                    isExpand1 = !isExpand1;
                                  });
                                },
                                    icon:  !isExpand1 ? const Icon(Icons.expand_less,size: 40,color: Colors.grey) : const Icon(Icons.expand_more,size: 40,color: Colors.grey))
                              ],
                            ),
                            !isExpand1 ? const Text("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",style: TextStyle(color: Colors.grey,fontSize: 18),) : const Divider(color: Colors.grey,height: 20,thickness: 1.5,),
                            Row(
                              children: [
                                const Text('Reviews',style: TextStyle(fontSize: 20),),
                                const Spacer(),
                                IconButton(onPressed: () {
                                  isExpand2;
                                  setState(() {
                                    isExpand2 = !isExpand2;
                                  });
                                },
                                    icon:  !isExpand2 ? const Icon(Icons.expand_less,size: 40,color: Colors.grey,) : const Icon(Icons.expand_more,size: 40,color: Colors.grey))
                              ],
                            ),
                            !isExpand2 ? const Text("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",style: TextStyle(color: Colors.grey,fontSize: 18),) : const Divider(color: Colors.grey,height: 20,thickness: 1.5,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}
