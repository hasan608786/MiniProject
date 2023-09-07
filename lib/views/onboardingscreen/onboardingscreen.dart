import 'package:flutter/material.dart';

import '../grocery_home/groceryhome.dart';
import '../widgets/bottomnavbar/navigation_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(initialPage: 0);

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A4BA0),
      body: Padding(
        padding: const EdgeInsets.only(left: 75, right: 75),
        child: Column(
          children: [
            SizedBox(
              height: 415,
              child:
              PageView(
                controller: controller,
                children: [
                  Column(
                    children: [
                      Text(
                        '\n\nYour holiday \nshopping \ndelivered to Screen \none\n',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 1\n\n",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                              height: 5,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '\n\nYour holiday \nshopping \ndelivered to Screen \ntwo\n',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 2\n\n",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 5,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              )),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),
            Image.asset('assets/images/Icon.png'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if( controller.page == 0){
                  controller.nextPage(duration: Duration(milliseconds: 150), curve: Curves.linear);
                }if(controller.page == 1 ){

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                }
                setState(() {

                });
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Row(
                    children: [
                      Text('Get Started',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      Spacer(),
                      Icon(Icons.arrow_forward_sharp),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
