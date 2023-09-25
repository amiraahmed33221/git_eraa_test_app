import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:test_app/screen/user_screen.dart';

import '../components/sub_text.dart';
import '../components/tags_text.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/travel.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TagsText(textValue:'Explore Beauty'),
                TagsText(textValue:'Of Journey'),
                SubText(textValue: 'Everything you can imagine is here',),
              ],
            ),
          ),
          SizedBox(height: 350,),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SlideAction(
                  borderRadius: 12,
                  elevation: 0,
                  innerColor: Color(0xff24161b),
                  outerColor: Color(0xff7e6c67),
                  sliderButtonIcon: Icon(Icons.double_arrow_rounded,color: Colors.grey,),
                  text: "Swipe to Explore Now",
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  sliderRotate: false,
                  onSubmit: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          Center(child: Text('Privacy Policy',style: TextStyle(color:Colors.white))),
        ],
      ),
    );
  }
}
