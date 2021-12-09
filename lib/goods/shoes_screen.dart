import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/view_shop/ditail_good.dart';

import '../group_shops_screen.dart';
import '../home_page.dart';
import '../shop_screen.dart';
import 'goods_screen.dart';

class Shoes extends StatefulWidget {
  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
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
                    titleFirst: 'Кроси',
                    titleSecond: '1500 грн.',
                    image: 'assets/images/shoes1.jpg',
                    good: Good(title: 'Кроси', image: 'shoes1', price: '1500',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Кроси',
                    titleSecond: '1500 грн.',
                    image: 'assets/images/shoes2.jpg',
                    good: Good(title: 'Кроси', image: 'shoes2', price: '1500',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Кроси',
                    titleSecond: '1500 грн.',
                    image: 'assets/images/shoes3.jpg',
                    good: Good(title: 'Кроси', image: 'shoes3', price: '1500',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Кроси',
                    titleSecond: '1500 грн.',
                    image: 'assets/images/shoes4.jpg',
                    good: Good(title: 'Кроси', image: 'shoes4', price: '1500',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Кроси',
                    titleSecond: '1500 грн.',
                    image: 'assets/images/shoes5.jpg',
                    good: Good(title: 'Кроси', image: 'shoes5', price: '1500',),
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
