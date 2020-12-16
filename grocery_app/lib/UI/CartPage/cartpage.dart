import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app/CustomWidget/customoptioncontainer.dart';
import 'package:grocery_app/CustomWidget/customdescriptioncontainer.dart';
import 'package:grocery_app/UI/CartPage/custompainter.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE7BAB7),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffE7BAB7),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Stack(children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Positioned(
                        top: -3,
                        left: 13,
                        child: Text(quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)))
                  ]),
                  onPressed: () {},
                ),
                IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ],
            ),
          ],
        ),
        body: Stack(overflow: Overflow.visible, children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 393,
                  color: Color(0xffE7BAB7),
                  child: Image.asset(
                    "banana.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Container(
                    height: 518,
                    width: 393,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Banana Fruit",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Fresh Drink",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_border, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.history, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "5 minute",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CustomDescriptionContainer(
                                    "30%",
                                    "Sweet",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomDescriptionContainer(
                                    "30%",
                                    "Fruit",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomDescriptionContainer(
                                    "40%",
                                    "Water",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Option",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  CustomOptionContainer(
                                    "Basic",
                                    80,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CustomOptionContainer(
                                    "Pepper topping",
                                    130,
                                  ),
                                ],
                              ),
                              Center(
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))),
                                    child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: IconButton(
                                            icon: Icon(
                                              Icons.info_outline,
                                              color: Colors.black,
                                            ),
                                            onPressed: null))),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 200,
                            width: 400,
                            child: CustomPaint(
                              painter: RPSCustomPainter(),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 30, right: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 70),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "03",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "Total order",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 70),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "\$ 45.99",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "Total price",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 50.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Color(0xfffddc03),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            )),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Pay",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "Now",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 110,
              left: 290,
              child: Card(
                elevation: 15,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Container(
                  height: 140,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: Icon(Icons.add_circle_outline, size: 30),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          }),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.black87,
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              quantity--;
                            });
                          })
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
