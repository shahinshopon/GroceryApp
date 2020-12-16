import 'package:flutter/material.dart';


Widget CustomCarouselImage(String url, String text1, String text2) {
  return Stack(overflow: Overflow.visible, children: [
    Container(
      height: 434,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 12, left: 12),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: Image.asset(
              url,
              fit: BoxFit.fill,
            )),
      ),
    ),
    Positioned(
        top: 50,
        left: 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xff019dab),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 230,
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Fresh Drink",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ))
  ]);
}