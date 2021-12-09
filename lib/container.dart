import 'package:flutter/material.dart';
import 'home_page.dart';

class Contain extends StatelessWidget {

  final title;

  const Contain({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
    );
  }
}