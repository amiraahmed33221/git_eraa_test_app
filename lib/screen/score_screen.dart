import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;


  const ScoreScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Results',style: TextStyle(color: Colors.greenAccent))),
        backgroundColor: Color(0xff1f1147),
        elevation: 0,
      ),
   backgroundColor: Color(0xff1f1147),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text('Total correct answer',style:TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),margin: EdgeInsets.all(10)),
        Container(child: Text('6 out of 9 question',style:TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.w500),),margin: EdgeInsets.all(10)),
          // SizedBox(height: 15,),

        Center(child: Image.asset('assets/zzz.png')),
          SizedBox(height: 15,),
          Center(child: Text('Score:$score',style: TextStyle(color: Colors.white))),

          Container(
            margin:EdgeInsets.only(top: 30),

            // padding: EdgeInsets.all(20),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff6a49fe),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  // side: BorderSide(color: Colors.indigo.shade400,width: 3),
                  fixedSize: const Size(280, 50),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ()),
                  // );
                },
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sync,color: Colors.white,),
                      Text('Try Again'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
