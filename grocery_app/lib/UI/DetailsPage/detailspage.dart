import 'package:flutter/material.dart';
import 'package:grocery_app/UI/TabPages/tabcontrollertwo.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffedd14),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfffedd14),
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
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: null),
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
        body: Column(
          children: [
            Container(
              height: 200,
              width: 393,
              color: Colors.transparent,
              child: Image.asset(
                "juice.png",
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabControllerPageTwo(),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
