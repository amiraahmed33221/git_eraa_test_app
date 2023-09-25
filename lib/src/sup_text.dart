import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupText extends StatelessWidget {

   final String textValue;

   SupText({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,style: TextStyle(
      color: Colors.grey,
    ),
    );
  }
}
