import 'package:flutter/material.dart';

class TagsText extends StatelessWidget {

   final String textValue;
   TagsText({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue.toUpperCase(),
      style: TextStyle(
        color:Color(0xff25171b),
        fontSize: 24,
        fontWeight: FontWeight.w900,

      ),
    );
  }
}
