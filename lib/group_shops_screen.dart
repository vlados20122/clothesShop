import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/goods/goods_screen.dart';
import 'package:flutter_gods_clothes/home_page.dart';
import 'package:flutter_gods_clothes/view_shop/view_all.dart';

class GroupShopFirst extends StatelessWidget {

  final String title;
  final Widget widget;

  const GroupShopFirst({Key? key,required this.title,required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0.9),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        ),
        splashColor: Colors.grey,
        hoverColor: Colors.grey.withOpacity(0.4),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class GroupShopSecond extends StatelessWidget {
  final String title;
  final String image;
  final Widget widget;

  const GroupShopSecond({Key? key, required this.title, required this.image,required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0.9),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        splashColor: Colors.grey,
        hoverColor: Colors.grey.withOpacity(0.4),
        child: Stack(
          children: [
            Column(
              children: [
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
