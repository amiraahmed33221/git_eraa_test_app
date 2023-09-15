
import 'package:flutter/material.dart';
import 'package:test_app/screen/about_screen.dart';
import 'package:test_app/screen/levels_screen.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double ScreenHeight =MediaQuery.of(context).size.height;
    // double ScreenWidth =MediaQuery.of(context).size.width;
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      // body: Container(
      //   color: Colors.black,
      //   width: ScreenWidth,
      //   child: Center(
      //     child: LayoutBuilder(
      //       builder:(context,constrains) {
      //         double localHeight=constrains.maxHeight;
      //         double localWidth=constrains.maxWidth;
      //         print('height=$ScreenHeight');
      //         print('localHeight =$localHeight');
      //         print('width=$ScreenWidth');
      //         print('localWidth=$localWidth');
      //      return   Container(
      //           color: Colors.red,
      //        width: localWidth /2,
      //        height: localHeight/2,
      //         );
      //       }
      //     ),
      //   ),
      // ),

      backgroundColor: Color(0xff1e1147),
      body: Center(
              child: Column(
                children: [
                  Container(
                    child: const Image(
                      image: AssetImage("assets/a1.jpg"),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 30),

                    // padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff6a49fe),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        // side: BorderSide(color: Colors.indigo.shade400,width: 3),
                        fixedSize: const Size(280, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LevelsScreen()),
                        );
                      },
                      child: const Text('Play Now'),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 30),

                    // padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1f1147),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        side: BorderSide(color: Color(0xff331e7f),width: 2),shadowColor:Color(0xff331e7f) ,
                        fixedSize: const Size(280, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LevelsScreen()),
                        );
                      },
                      child: const Text('Play Now'),
                    ),
                  ),

                ],
              ),
            ),
    );
  }
}









