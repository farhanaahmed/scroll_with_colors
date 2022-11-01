import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.colorName,required this.colorCode}) : super
      (key: key);
  final String colorName;
  final Color colorCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: colorCode,
      child: Center(
        child: Text(
          colorName,
        style: TextStyle(
            color: colorName == "Black"?  Colors.white : Colors.black,
        ),
        ),
      ),

    );
  }
}
