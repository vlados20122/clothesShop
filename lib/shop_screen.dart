import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/group_shops_screen.dart';
import 'package:flutter_gods_clothes/view_shop/view_all.dart';
import 'goods/goods_screen.dart';
import 'goods/jacket_screen.dart';
import 'goods/jinc_screen.dart';
import 'goods/shoes_screen.dart';
import 'goods/sport_screen.dart';

class ShopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'), fit: BoxFit.cover),
      ),
      child: RawScrollbar(
        thumbColor: Colors.black,
        isAlwaysShown: true,
        timeToFade:  Duration(seconds: 5),
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
                  GroupShopFirst(title: 'Весь Асортимент', widget: AllGoods(),),
                  GroupShopSecond(title: 'Зимові куртки', image: 'assets/images/jacket1.jpg', widget: Jacket(),),
                  GroupShopSecond(title: 'Джінси', image: 'assets/images/jinc1.jpg', widget: Jinc(),),
                  GroupShopSecond(title: 'Спортивні костюми', image: 'assets/images/sport1.jpg', widget: Sport(),),
                  GroupShopSecond(title: 'Кроси', image: 'assets/images/shoes1.jpg', widget: Shoes(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
