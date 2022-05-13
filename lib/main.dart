import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "images/image6.png",
              width: 60,
              height: 60,
            ),
            top: 0,
            left: 0,
          ),
          Containers(
              label1: "What do you want to do today ?",
              label2: "I will finish my homeworks ....",
              Top: 100.0),
          Containers(
              label1: "What do you want to do today ?",
              label2: "I will finish my homeworks ....",
              Top: 230.0),
          Containers(
              label1: "What do you want to do today ?",
              label2: "I will finish my homeworks ....",
              Top: 360.0),
          Positioned(
            child: Container(
              height: 50,
              width: 50,
              child: Icon(
                Icons.add,
                size: 40,
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            bottom: 0,
            right: 0,
          ),
        ],
      ),
    )));
  }

  Widget Containers({label1, label2, Top}) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.only(top: Top),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label1,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,

                  // fontWeight: FontWeight.w400,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              label2,
              style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.w400,
                  color: Colors.black87),
            ),
          ],
        ));
  }
}
