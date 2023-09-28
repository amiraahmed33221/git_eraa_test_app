import 'package:flutter/cupertino.dart';

class SubText extends StatelessWidget {


  final String textValue;
  SubText({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(
        textValue.toUpperCase(),
        style: TextStyle(
        color:Color(0xfffdfdfe),
    ),
    );
  }
}
