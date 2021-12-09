import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/view_shop/ditail_good.dart';

import '../group_shops_screen.dart';
import '../home_page.dart';
import '../shop_screen.dart';
import 'goods_screen.dart';

class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
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
                    titleFirst: 'Спортивний костюм',
                    titleSecond: '1100 грн.',
                    image: 'assets/images/sport1.jpg',
                    good: Good(title: 'Спортивний костюм', image: 'sport1', price: '1100',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Спортивний костюм',
                    titleSecond: '1100 грн.',
                    image: 'assets/images/sport2.jpg',
                    good: Good(title: 'Спортивний костюм', image: 'sport2', price: '1100',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Спортивний костюм',
                    titleSecond: '1100 грн.',
                    image: 'assets/images/sport3.jpg',
                    good: Good(title: 'Спортивний костюм', image: 'sport3', price: '1100',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Спортивний костюм',
                    titleSecond: '1100 грн.',
                    image: 'assets/images/sport4.jpg',
                    good: Good(title: 'Спортивний костюм', image: 'sport4', price: '1100',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Спортивний костюм',
                    titleSecond: '1100 грн.',
                    image: 'assets/images/sport5.jpg',
                    good: Good(title: 'Спортивний костюм', image: 'sport5', price: '1100',),
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
