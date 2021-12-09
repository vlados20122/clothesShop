import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  CustomTapBar({required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // width: screenWidth*0.50,
      child: TabBar(
        indicatorColor: Colors.black,
        controller: controller,
        tabs: tabs,
      ),
    );
  }
}
