import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {

  final title;

  const CustomTab({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: TextStyle(fontSize: 17,color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
