import 'package:flutter/material.dart';
import 'container.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              border: Border.all(),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Text(
                  'Clothes Shop',
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, bottom: 25),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Contain(title: 'Магазин чоловічого одягу.'),
                  Contain(title: 'Найвигідніші ціни.'),
                  Contain(title: 'Ми зробимо ваш стиль.'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
