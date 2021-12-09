import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/goods/goods_screen.dart';
import 'package:flutter_gods_clothes/home_page.dart';
import 'package:flutter_gods_clothes/view_shop/ditail_good.dart';
import '../group_shops_screen.dart';
import '../shop_screen.dart';

class AllGoods extends StatefulWidget {
  @override
  _AllGoodsState createState() => _AllGoodsState();
}

class _AllGoodsState extends State<AllGoods> {
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
                crossAxisCount: 4,
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
                  GroupShopFirst(
                    title: 'Головне меню',
                    widget: HomePage(),
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
