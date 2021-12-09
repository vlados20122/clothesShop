import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/view_shop/ditail_good.dart';

import '../group_shops_screen.dart';
import '../home_page.dart';
import '../shop_screen.dart';
import 'goods_screen.dart';

class Jacket extends StatefulWidget {
  @override
  _JacketState createState() => _JacketState();
}

class _JacketState extends State<Jacket> {
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
                    titleFirst: 'Зимова Куртка',
                    titleSecond: '999 грн.',
                    image: 'assets/images/jacket1.jpg',
                    good: Good(title: 'Зимова Куртка', image: 'jacket1', price: '999',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Зимова Куртка',
                    titleSecond: '999 грн.',
                    image: 'assets/images/jacket2.jpg',
                    good: Good(title: 'Зимова Куртка', image: 'jacket2', price: '999',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Зимова Куртка',
                    titleSecond: '999 грн.',
                    image: 'assets/images/jacket3.png',
                    good: Good(title: 'Зимова Куртка', image: 'jacket3', price: '999',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Зимова Куртка',
                    titleSecond: '999 грн.',
                    image: 'assets/images/jacket4.jpg',
                    good: Good(title: 'Зимова Куртка', image: 'jacket4', price: '999',),
                  ),
                  GoodsScreen(
                    titleFirst: 'Зимова Куртка',
                    titleSecond: '999 грн.',
                    image: 'assets/images/jacket5.jpg',
                    good: Good(title: 'Зимова Куртка', image: 'jacket5', price: '999',),
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
