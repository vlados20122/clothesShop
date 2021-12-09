import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/contacts_screen.dart';
import 'package:flutter_gods_clothes/cors_screen.dart';
import 'package:flutter_gods_clothes/login_screen.dart';
import 'package:flutter_gods_clothes/register_screen.dart';
import 'package:flutter_gods_clothes/shop_screen.dart';
import 'menu_screen.dart';
import 'package:flutter_gods_clothes/content_view.dart';
import 'package:flutter_gods_clothes/custom_tab.dart';
import 'package:flutter_gods_clothes/custom_tab_bar.dart';
import 'view_shop/view_all.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<ContentView> contentViews = [
    ContentView(
        tab: CustomTab(title: 'Головне меню'),
        content: MenuScreen()),
    ContentView(
        tab: CustomTab(title: 'Магазин'),
        content: ShopScreen()),
    ContentView(
        tab: CustomTab(title: 'Корзина'),
        content: Cors()),
    ContentView(
        tab: CustomTab(title: 'Контакти'),
        content: ContactsForm()),
    ContentView(
        tab: CustomTab(title: 'Залогінитися'),
        content: LogicScreen()),
    ContentView(
        tab: CustomTab(title: 'Зареєструватися'),
        content: RegScreen()),

  ];

  @override
  void initState() {
    tabController = TabController(length: contentViews.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 715) {
          return desktopView();
        } else {
          return mobileView();
        }
      }),
    );
  }

  Widget desktopView() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                border: Border.all(),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 2.0)
                ]),
            child: CustomTapBar(
              controller: tabController!,
              tabs: contentViews.map((e) => e.tab).toList(),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50,
            child: TabBarView(
              controller: tabController!,
              children: contentViews.map((e) => e.content).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget mobileView() {
    return Container();
  }
}
