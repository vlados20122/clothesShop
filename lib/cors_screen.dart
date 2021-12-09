import 'package:flutter/material.dart';

class Cors extends StatefulWidget {
  @override
  _CorsState createState() => _CorsState();
}

class _CorsState extends State<Cors> {
  @override
  double a = 6;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Товар',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                width: MediaQuery.of(context).size.width / a,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
              Container(
                child: Text(
                  'Опис',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                width: MediaQuery.of(context).size.width / a,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
              Container(
                child: Text(
                  'Ціна',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                width: MediaQuery.of(context).size.width / a,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
              Container(
                child: Text(
                  'Кількість',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                width: MediaQuery.of(context).size.width / a,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
              Container(
                child: Text(
                  'Вартість',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                width: MediaQuery.of(context).size.width / a,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
