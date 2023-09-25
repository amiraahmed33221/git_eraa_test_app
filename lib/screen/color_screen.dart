import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../src/app_colors.dart';
import '../src/sup_text.dart';
class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}
class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KMainColor,
      body: Center(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                Container(child: Image.asset('assets/logo.png')),
                SizedBox.fromSize(size: Size.fromHeight(44),),
                Container(child: SupText(textValue:'Choose your color')),
                SizedBox.fromSize(size: Size.fromHeight(44),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                 InkWell(
                   onTap: () {
                     print('blue');
                   },
                     child: Image.asset('assets/color4.png')),
                      SizedBox(height: 50,),
                      InkWell(
                      onTap: () {
                        print('blue');
                      },
                      child: Image.asset('assets/color3.png')),
                    ],
                  ),
                SizedBox.fromSize(size: Size.fromHeight(30),),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              print('blue');
                            },
                            child: Image.asset('assets/color2.png')),
                        SizedBox(width: 22,),
                        InkWell(
                            onTap: () {
                              print('blue');
                            },
                            child: Image.asset('assets/color1.png')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Column(
                 children: [
                   SupText(textValue: 'Player'),
                   SupText(textValue: '5'),
                 ],
               ),
                  Column(
                    children: [
                      SupText(textValue: 'SPU'),
                      SupText(textValue: '3'),
                    ],
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
