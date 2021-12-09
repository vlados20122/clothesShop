import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/view_shop/ditail_good.dart';

import '../group_shops_screen.dart';
import '../home_page.dart';
import '../shop_screen.dart';
import 'goods_screen.dart';

class Jinc extends StatefulWidget {
  @override
  _JincState createState() => _JincState();
}

class _JincState extends State<Jinc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'), fit: BoxFit.cover),
      ),
      child: RawScrollbar(
        thumbColor: Colors.black,
        isAlwaysShown: true,
        timeToFade: Duration(seconds: 5),
        radius: Radius.circular(20),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.5,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  GroupShopFirst(
                    title: 'Головне меню',
                    widget: HomePage(),
                  ),
                  GoodsScreen(
                    titleFirst: 'Джінси',
                    titleSecond: '750 грн.',
                    image: 'assets/images/jinc1.jpg',
                    good: Good(title: 'Джінси', image: 'jinc1', price: '750',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Джінси',
                    titleSecond: '750 грн.',
                    image: 'assets/images/jinc2.jpg',
                    good: Good(title: 'Джінси', image: 'jinc2', price: '750',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Джінси',
                    titleSecond: '750 грн.',
                    image: 'assets/images/jinc3.jpg',
                    good: Good(title: 'Джінси', image: 'jinc3', price: '750',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Джінси',
                    titleSecond: '750 грн.',
                    image: 'assets/images/jinc4.jpg',
                    good: Good(title: 'Джінси', image: 'jinc4', price: '750',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Джінси',
                    titleSecond: '750 грн.',
                    image: 'assets/images/jinc5.jpg',
                    good: Good(title: 'Джінси', image: 'jinc5', price: '750',),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //
    );
  }
}
