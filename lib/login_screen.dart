import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogicScreen extends StatefulWidget {
  @override
  _LogicScreenState createState() => _LogicScreenState();
}

class _LogicScreenState extends State<LogicScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  FocusNode _one = FocusNode();
  FocusNode _two = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.7,
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                focusNode: _one,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid mail id as vlad@gmail.com'),
              ),
            ),
          ),
          SizedBox(
              height: 10
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.7,
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                focusNode: _two,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your secure password'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () { },
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
