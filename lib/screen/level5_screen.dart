import 'package:flutter/material.dart';

class Level5Screen extends StatelessWidget {
  const Level5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.vertical_distribute)],
        title: Text('Level 5',style: TextStyle(color: Colors.tealAccent[400],),),
        backgroundColor: Color(0xff1e1147),
        elevation: 0,
      ),
      backgroundColor: Color(0xff1e1147),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(9),
            padding: EdgeInsets.all(15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('07/10',
                    style: TextStyle(
                        color: Colors.tealAccent[400],
                        fontWeight: FontWeight.w700)),
                Text('What is the 6 planet in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20)),
                Text('the solar system?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20)),
                Image(image: AssetImage('assets/planet.jpg')),
              ],
            ),
          ),
          Row(

            children: [
            ],
          ),

        ],
      ),
    );
  }
}
