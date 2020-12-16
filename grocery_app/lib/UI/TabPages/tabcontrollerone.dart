import 'dart:ui';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/CustomWidget/customcarouselimage.dart';
import 'package:grocery_app/UI/DetailsPage/detailspage.dart';

class TabControllerPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            unselectedLabelColor: Colors.black38,
            isScrollable: false,
            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            labelColor: Colors.black54,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: "Popular",
              ),
              Tab(
                text: "Best Seller",
              ),
              Tab(
                text: "Promo",
              ),
              Tab(
                text: "Category",
              ),
            ],
          ),
          body: TabBarView(
              children: [Popular(), BestSeller(), Promo(), Category()]),
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Popular"),
    );
  }
}

class BestSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Best Seller"),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => DetailsPage()));
                  },
                  child: CustomCarouselImage(
                    "juice.png",
                    "40%",
                    "Orange",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: CustomCarouselImage("apple.png", "30%", "Apple"),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: CustomCarouselImage(
                    "mango.png",
                    "20%",
                    "Mango",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: CustomCarouselImage(
                    "blueberry.png",
                    "25%",
                    "Black Grapes",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: DotsIndicator(
            dotsCount: 4,
            position: 0,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          )),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Category"),
    );
  }
}
