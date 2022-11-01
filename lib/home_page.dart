import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_practice/list_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> _colorsName = [
    "Black",
    "Blue",
    "Indigo",
    "Teal",
    "Cyan",
    "Green",
    "Yellow",
    "Orange",
    "Red",
    "Pink",
    "Lavender",
    "White",

  ];
  List<Color> _colorsCode = [
    Colors.black,
    Colors.blue,
    Colors.indigo,
    Colors.teal,
    Colors.cyan,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Color(0XFFE6E6FA),
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Scroll to play with colors!",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  for (int i = 0; i < _colorsName.length; i++)
                    ListItem(
                      colorCode: _colorsCode[i],
                      colorName: _colorsName[i],
                    ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
