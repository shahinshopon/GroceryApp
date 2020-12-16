import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/CustomWidget/customimagecontainer.dart';
import 'package:grocery_app/UI/CartPage/cartpage.dart';

class TabControllerPageTwo extends StatefulWidget {
  @override
  _TabControllerPageTwoState createState() => _TabControllerPageTwoState();
}

class _TabControllerPageTwoState extends State<TabControllerPageTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TabBar(
          unselectedLabelColor: Colors.black38,
          isScrollable: false,
          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          labelColor: Colors.black87,
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              text: "Packages",
            ),
            Tab(
              text: "Info",
            ),
            Tab(
              text: "Ingredients",
            ),
            Tab(
              text: "Photo",
            ),
          ],
        ),
        body:
            TabBarView(children: [Packages(), Info(), Ingredients(), Photo()]),
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Info"),
    );
  }
}

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  bool ontap = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomImageContainer(
                    "banana.png",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImageContainer(
                    "juice.png",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImageContainer(
                    "combo.png",
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    width: 240,
                    child: Image.asset("combo.png"),
                  ),
                  Text(
                    "Combo Food Hot",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star_border, size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.6 (233 ratings)",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history, size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "60 minute",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "\$ 67.00",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                ontap = !ontap;
              });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: ontap == true ? Color(0xfffddc03) : Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Center(
                child: Text(
                  "Order Now",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: ontap == true ? Colors.white : Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => CartPage()));
            },
            child: Center(
              child: Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ingredients"),
    );
  }
}

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Photo"),
    );
  }
}
