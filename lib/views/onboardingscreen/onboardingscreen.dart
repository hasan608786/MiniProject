import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottomnavbar/navigation_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List textList = [1, 2];
  var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A4BA0),
      body: Padding(
        padding: const EdgeInsets.only(left: 75, right: 75),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: CarouselSlider(
                    items: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            '\n\nYour holiday \nshopping \ndelivered to Screen \none\n',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          AutoSizeText(
                            "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 1\n\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            '\n\nYour holiday \nshopping \ndelivered to Screen \ntwo\n',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          AutoSizeText(
                            "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 2\n\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                    carouselController: _controller,
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        aspectRatio: 1,
                        initialPage: 0,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: textList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: (_current == entry.key) ? 50 : 30,
                          height: 5,
                          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color:
                              (_current == entry.key) ? Colors.white : Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),

            const Spacer(),
            Image.asset('assets/images/Icon.png'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (_current == 0) {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.linear);
                }
                if (_current == 1) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                }
                setState(() {});
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

