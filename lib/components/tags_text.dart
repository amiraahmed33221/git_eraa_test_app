import 'package:flutter/material.dart';

class TagsText extends StatelessWidget {

   final String textValue;
   TagsText({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue.toUpperCase(),
      style: const TextStyle(
        color:Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w900,

      ),
    );
  }
}
