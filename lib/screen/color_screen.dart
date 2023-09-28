import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/enums/color_enum.dart';
import '../components/sub_text.dart';
import '../components/tags_text.dart';
import '../enums/enum_result.dart';
import '../src/app_colors.dart';
import '../src/sup_text.dart';
class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}
class _ColorScreenState extends State<ColorScreen> {
  ColorEnum? userChoice;
  ColorEnum? computerChoice;
  List choices=[
    ColorEnum.blue,
    ColorEnum.green,
    ColorEnum.pink,
    ColorEnum.yellow,
  ];

  ColorResultEnum? colorResultEnum;
  int userScore=0;
  int computerScore=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KMainColor,
      body:
      userChoice==null?

      Center(
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
                     makeComputerSelect();
                   setState(() {
                     userChoice=ColorEnum.blue;
                   });
                   colorAlgorithm();
                   },
                     child: Image.asset('assets/blue.png')),
                      SizedBox(height: 50,),
                      InkWell(
                      onTap: () {
                        makeComputerSelect();
                      setState(() {
                        userChoice=ColorEnum.green;
                      });
                        colorAlgorithm();
                      },
                      child: Image.asset('assets/green.png')),
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
                              makeComputerSelect();
                             setState(() {
                               userChoice=ColorEnum.pink;
                             });
                              colorAlgorithm();
                            },
                            child: Image.asset('assets/pink.png')),
                        SizedBox(width: 22,),
                        InkWell(
                            onTap: () {
                              makeComputerSelect();
                             setState(() {
                               userChoice=ColorEnum.yellow;
                             });
                              colorAlgorithm();
                            },
                            child: Image.asset('assets/yellow.png')),
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
                   SupText(textValue: '$userScore'),
                 ],
               ),
                  Column(
                    children: [
                      SupText(textValue: 'SPU'),
                      SupText(textValue: '$computerScore'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ):
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TagsText(textValue:'Result is ${colorResultEnum!.name}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SubText(textValue:'You Select'),
                      Image.asset('assets/${userChoice!.name}.png'),
                    ],
                  ),
                  Column(
                    children: [
                      SubText(textValue:'Computer Select'),
                      Image.asset('assets/${computerChoice!.name}.png'),
                    ],
                  ),
                ],
              ),
             ElevatedButton(onPressed: (){
               setState(() {
                 // colorResultEnum=ColorResultEnum.win;
                 userChoice=null;
               });
             }, child:Text('Play Again')),
             ElevatedButton(onPressed: (){
               setState(() {
                userScore=0;
                computerScore=0;
                 userChoice=null;
               });
             }, child:Text('Reset Scores')),
            ],
          ),
        ),
    );
  }

  makeComputerSelect()
  {
    Random random =  Random();
    int randomNumber = random.nextInt(4);
   setState(() {
     computerChoice=choices[randomNumber];
   });
  }

  colorAlgorithm()
  {
     if(userChoice==ColorEnum.blue&&computerChoice==ColorEnum.blue)
     {
      setState(() {
       colorResultEnum=ColorResultEnum.draw;
      });
     }
     else if(userChoice==ColorEnum.blue&&computerChoice==ColorEnum.green)
     {
       setState(() {
         colorResultEnum=ColorResultEnum.lose;
         computerScore++;
       });
     }
     else if(userChoice==ColorEnum.blue&&computerChoice==ColorEnum.pink)
       {
         colorResultEnum=ColorResultEnum.win;
         computerScore++;
       }

     else if (userChoice==ColorEnum.blue&& computerChoice==ColorEnum.green)
       {
         setState(() {
           colorResultEnum=ColorResultEnum.win;
           userScore++;
         });
       }
     else if (userChoice==ColorEnum.blue&& computerChoice==ColorEnum.blue) {
       setState(() {
         colorResultEnum = ColorResultEnum.draw;
       });
     }
     else if (userChoice==ColorEnum.blue&& computerChoice==ColorEnum.pink)
     {
       setState(() {
         colorResultEnum=ColorResultEnum.lose;
         computerScore++;
       });
     }
     else if (userChoice==ColorEnum.yellow&& computerChoice==ColorEnum.pink)
     {
       setState(() {
         colorResultEnum=ColorResultEnum.lose;
         computerScore++;
       });
     }

     else if (userChoice==ColorEnum.yellow&& computerChoice==ColorEnum.green)
     {
       setState(() {
         colorResultEnum=ColorResultEnum.win;
         userScore++;
       });
     }

     else if (userChoice==ColorEnum.yellow&& computerChoice==ColorEnum.yellow)
     {
       setState(() {
         colorResultEnum=ColorResultEnum.draw;
       });
     }

  }
  }

