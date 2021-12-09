import 'package:flutter/material.dart';
import 'data_bar.dart';

class ContactsForm extends StatefulWidget {
  @override
  _ContactsFormState createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {

  var controllerOne = TextEditingController();
  var controllerTwo = TextEditingController();
  var controllerThree = TextEditingController();
  var controllerFour = TextEditingController();
  var focusOne = FocusNode();
  var focusTwo = FocusNode();
  var focusThree = FocusNode();
  var focusFour = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.3,
            child: ListView(
              addSemanticIndexes: false,
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        ' Контактна форма'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.grey,
                            color: Colors.white),
                      ),
                    ),
                    Scrollbar(
                      // isAlwaysShown: true,
                      child: Scrollbar(
                        hoverThickness: 0.1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              DataBar(),
                              Container(
                                height: MediaQuery.of(context).size.height / 1.5,
                                width: MediaQuery.of(context).size.width / 1.6,
                                child: Scrollbar(
                                  hoverThickness: 0.1,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: Colors.grey
                                                  .withOpacity(0.85),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextField(
                                            controller: controllerOne,
                                            focusNode: focusOne,
                                            onEditingComplete: () {
                                              focusOne.nextFocus();
                                            },
                                            cursorColor: Colors.black,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              hintText: '''Ваше ім'я''',
                                              border: OutlineInputBorder(),
                                              focusedBorder:
                                              OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              disabledBorder:
                                              OutlineInputBorder(),
                                            ),
                                          ),
                                        ), //textfield2 name
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: Colors.grey
                                                  .withOpacity(0.85),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextField(
                                            controller: controllerTwo,
                                            focusNode: focusTwo,
                                            onEditingComplete: () {
                                              focusTwo.nextFocus();
                                            },
                                            cursorColor: Colors.black,
                                            keyboardType:
                                            TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              hintText: 'Email@com',
                                              border: OutlineInputBorder(),
                                              focusedBorder:
                                              OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              disabledBorder:
                                              OutlineInputBorder(),
                                            ),
                                          ),
                                        ), //textfield1 email
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: Colors.grey
                                                  .withOpacity(0.85),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextField(
                                            controller: controllerThree,
                                            focusNode: focusThree,
                                            onEditingComplete: () {
                                              focusThree.nextFocus();
                                            },
                                            cursorColor: Colors.black,
                                            keyboardType:
                                            TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: '''Номер телефона''',
                                              border: OutlineInputBorder(),
                                              focusedBorder:
                                              OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              disabledBorder:
                                              OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: Colors.grey
                                                  .withOpacity(0.85),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextField(
                                            cursorColor: Colors.black,
                                            controller: controllerFour,
                                            focusNode: focusFour,
                                            minLines: 1,
                                            decoration: InputDecoration(
                                              hintText:
                                              'Напиши відгук або побажання',
                                              focusedBorder:
                                              OutlineInputBorder(),
                                              disabledBorder:
                                              OutlineInputBorder(),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25),
                                            maxLines: 10,
                                            maxLength: 1000,
                                          ),
                                        ), //textfield2
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Colors.grey),
                                              onPressed: () {
                                                var value1 = '$controllerOne';
                                                var value2 = '$controllerTwo';
                                                var value3 =
                                                    '$controllerThree';
                                                var value4 =
                                                    '$controllerFour';
                                                if (value1.isEmpty) {
                                                  controllerOne.text =
                                                  'Error';
                                                } else {
                                                  controllerOne.clear();
                                                }
                                                if (value2.isEmpty) {
                                                } else {
                                                  controllerTwo.clear();
                                                }
                                                if (value3.isEmpty) {
                                                } else {
                                                  controllerThree.clear();
                                                }
                                                if (value4.isEmpty) {
                                                } else {
                                                  controllerFour.clear();
                                                }
                                              },
                                              child: Text('Відправити'),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
