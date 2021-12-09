import 'package:flutter/material.dart';
import 'package:flutter_gods_clothes/home_page.dart';

class Good extends StatefulWidget {
  final String title;
  final String image;
  final String price;

  const Good(
      {Key? key, required this.title, required this.image, required this.price})
      : super(key: key);

  @override
  State<Good> createState() => _GoodState();
}

class _GoodState extends State<Good> {

  var value = 1;

  @override
  Widget build(BuildContext context) {

    void increment() {
      print('value = $value');
      setState(() {
        ++value;
      });
      // ignore: avoid_print
      print(value);
    }

    void decrement() {
      if (value == 0) {
        return ;
      }else {
        setState(() {
          --value;
        });
      }
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                  widget.title,
                  style:
                  TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white, decoration: TextDecoration.none),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width / 3,
                        padding: EdgeInsets.all(25),
                        child: Card(
                            shape: OutlineInputBorder(),
                            child: Image(
                                image: AssetImage('assets/images/${widget.image}.jpg'),fit: BoxFit.cover,)),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.7,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${widget.price} Гривень',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ), //price
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.grey,
                            shape: OutlineInputBorder(),
                            elevation: 9,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text('Кількість : '),
                                Text('$value'),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () => increment(),
                                      icon: Icon(Icons.arrow_drop_up),
                                      iconSize: 15,
                                      splashRadius: 10,
                                    ),
                                    IconButton(
                                        splashRadius: 10,
                                        iconSize: 15,
                                        onPressed: () => decrement(),
                                        icon: Icon(Icons.arrow_drop_down)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), //value
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                              overlayColor:
                              MaterialStateProperty.all(Colors.black),
                              fixedSize: MaterialStateProperty.all(
                                  Size(MediaQuery.of(context).size.width / 3.7, 45)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ), //Таблиця розмірів
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_basket_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'В корзину'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                              overlayColor:
                              MaterialStateProperty.all(Colors.black),
                              fixedSize: MaterialStateProperty.all(
                                  Size(MediaQuery.of(context).size.width / 3.7, 45)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ), //Таблиця розмірів
                            child: Text(
                              'Оплата частинами',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                              overlayColor:
                              MaterialStateProperty.all(Colors.black),
                              fixedSize: MaterialStateProperty.all(
                                  Size(MediaQuery.of(context).size.width / 3.7, 45)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Купити в один клік',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: OutlinedButton(
                            onPressed: () =>
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              ),
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                              overlayColor:
                              MaterialStateProperty.all(Colors.black),
                              fixedSize: MaterialStateProperty.all(
                                  Size(MediaQuery.of(context).size.width / 3.7, 45)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Повернутися в головне меню',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),//купити в один клік кнопка
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
