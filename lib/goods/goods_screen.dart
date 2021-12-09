import 'package:flutter/material.dart';

class GoodsScreen extends StatelessWidget {

  final String titleFirst;
  final String titleSecond;
  final String image;
  final Widget good;


  const GoodsScreen({Key? key, required this.titleFirst, required this.image,required this.titleSecond,required this.good})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey.withOpacity(0.9),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () =>
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => good,
                ),
            ),
          splashColor: Colors.grey,
          hoverColor: Colors.grey.withOpacity(0.4),
          child: Stack(
            children: [
              Column(
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.shopping_cart), onPressed: () {  },
                            ),
                          ),
                          Container(
                            child: Text(
                              titleFirst,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              titleSecond,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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


