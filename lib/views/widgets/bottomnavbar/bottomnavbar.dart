import 'package:flutter/material.dart';
import 'package:new1/constant/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 7,
              spreadRadius: 3,
              offset: Offset.fromDirection(2))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIcons(
            icon: Icons.home,
            iconName: 'Home',
            onPressed: () {
              setState(() {
                _selected = 0;
              });
            }, selected: _selected == 0,
          ),
          CustomIcons(
            icon: Icons.category_outlined,
            iconName: 'Category',
            onPressed: () {
              setState(() {
                _selected = 1;
              });
            }, selected: _selected == 1,
          ),
          CustomIcons(
            icon: Icons.favorite,
            iconName: 'Favorite',
            onPressed: () {
              setState(() {
                _selected = 2;
              });
            }, selected: _selected == 2,
          ),
          CustomIcons(
            icon: Icons.more_vert,
            iconName: 'More',
            onPressed: () {
              setState(() {
                _selected = 3;
              });
            }, selected: _selected == 3,
          ),
        ],
      ),
    );
  }
}

class CustomIcons extends StatelessWidget {
  final String iconName;
  final IconData icon;
  final bool selected;
  final Function()? onPressed;
  const CustomIcons(
      {super.key,
      required this.iconName,
      required this.icon,
      required this.onPressed,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(icon ,color: selected ? AppColor.yellowColor : AppColor.black, size: selected ? 40 : 25,)),
        Text(
          iconName,
          style: TextStyle(
            color: selected ? Colors.transparent : Colors.grey,
            fontSize: 12,
            height: .01,
          ),
        ),
      ],
    );
  }
}
