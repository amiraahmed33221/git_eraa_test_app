import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/tags_text.dart';

import '../model/place_view.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  void updateList(String value){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(backgroundColor: Color(0xfff9f9f9),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: AssetImage('assets/man.png'),
            radius: 30,
          ),
        ),
        title: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text('Welome Back',style: TextStyle(color: Colors.grey)),
                  Icon(Icons.front_hand,color: Color(0xfffae0c7),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: TagsText(textValue: 'Ronald Richards',)
            ),
          ],
        ),
        actions: [Icon(Icons.circle_notifications_rounded,color: Color(0xffebccad),size: 50,)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xfffdfdfe),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Discover a city',
                prefixIcon: Icon(Icons.search_outlined,color: Colors.deepOrange,),
                // suffixIcon: Icon(Icons.room_preferences,color: Colors.deepOrange,),
              ),
            ),
          ),
           SizedBox(height: 10),
           Container(
             height: 140,
             child: ListView.builder(
               itemCount: 3,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
               return PlaceView(
                 companyName: 'Welome Back',

               );
             },),
           ),
    ],
    ),
    );
  }
}
// Icon(Icons.image),
// Text('Welome Back',style: TextStyle(color: Colors.grey)),