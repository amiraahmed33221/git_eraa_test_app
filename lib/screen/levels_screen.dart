import 'package:flutter/material.dart';
import 'package:test_app/screen/level01_levels.dart';
import 'package:test_app/screen/level02_lenels.dart';
import 'package:test_app/screen/level03_lenels.dart';
import 'package:test_app/screen/level04_lenels.dart';
import 'package:test_app/screen/level05_lenels.dart';
import 'package:test_app/screen/level06_lenels.dart';
import 'package:test_app/screen/level5_screen.dart';

class LevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_circle_left_outlined, color: Color(0xff331e7f),size: 40),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // leading:Icon(Icons.arrow_circle_left_rounded),
        backgroundColor: const Color(0xff1f1147),
        elevation: 0,
        title: Center(
          child: Text(
            'Levels',
            style: TextStyle(color: Color(0xff36e9bb),fontSize: 25,fontWeight:FontWeight.w800) ,
          ),
        ),
      ),
      backgroundColor: const Color(0xff1e1147),
      body:
      Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:0,
          ),
          children: [
            GestureDetector(
              child: Container(
                child: //Icon(Icons.pentagon_rounded,size: 100,color: Colors.deepPurple,)
                    const Image(image: AssetImage("assets/1.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Level01Levels()),
                );
              },
            ),
            GestureDetector(
              child: Container(
                child://Icon(Icons.pentagon_rounded,size: 100,color: Colors.indigoAccent,)
                    const Image(image: AssetImage("assets/2.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Level02Levels()),
                );
              },
            ),
            GestureDetector(
              child: Container(
                child: //Icon(Icons.pentagon_rounded,size: 100,color: Colors.orange,)
                    const Image(image: AssetImage("assets/3.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Level03Levels()),
                );
              },
            ),
            GestureDetector(
              child: Container(
                child:// Icon(Icons.pentagon_rounded,size: 100,color: Colors.greenAccent[700],)
                    const Image(image: AssetImage("assets/4.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Level04Levels()),
                );
              },
            ),
            GestureDetector(
              child: Container(
                child: //Icon(Icons.pentagon_rounded,size: 100,color: Colors.pinkAccent,)
                    const Image(image: AssetImage("assets/5.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Level5Screen()), //Level05Levels()),
                );
              },
            ),
            GestureDetector(
              child: Container(
                child: //Icon(Icons.pentagon_rounded,size: 100,color: Colors.deepPurple,)
                    const Image(image: AssetImage("assets/6.png")),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Level06Levels()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

