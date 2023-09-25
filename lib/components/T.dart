import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsScreen2 extends StatefulWidget {
  const ContactsScreen2({super.key});

  @override
  State<ContactsScreen2> createState() => _ContactsScreen2State();
}

class _ContactsScreen2State extends State<ContactsScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff153958),
      body: Center(
        child: Column(
          children: [
            Text('الجدول الاسبوعي',style: TextStyle(fontSize: 30,color:Color(0xFFF4FDD0),fontFamily: 'Cursive'),),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: Color(0xFF2E9F81),
                            width: 117,
                            height: 19,
                            child: Center(child: Text('الاهداف',style: TextStyle(fontSize: 15,color:Color(0xFFF4FDD0),fontFamily: 'Cursive',fontWeight:FontWeight.w700 ),)),
                          ),
                          Container(
                            color: Color(0xFFF4FDD0),
                            width: 117,
                            height: 65,
                            child: Column(
                              children: [

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: [
                                Container(
                                  color: Color(0xFF2E9F81),
                                  width: 117,
                                  height: 19,
                                  child: Center(child: Text('الاهداف',style: TextStyle(fontSize: 15,color:Color(0xFFF4FDD0),fontFamily: 'Cursive',fontWeight:FontWeight.w700 ),)),
                                ),
                                Container(
                                  color: Color(0xFFF4FDD0),
                                  width: 117,
                                  height: 270,
                                  child: Column(
                                    children: [

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('السبت',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الاحد',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الاتنين',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الثلاثاء',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الاربعاء',style: TextStyle(fontSize:10 ,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الخميس',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xFFF4FDD0),
                              width: 120,
                              height: 50,
                            ),
                            Container(
                              color: Color(0xFF2E9F81),
                              width: 25,
                              height: 50,
                              child: Text('الجمعة',style: TextStyle(fontSize: 10,color:Color(0xFFF4FDD0)),),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
