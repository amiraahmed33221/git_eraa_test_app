

import 'package:flutter/material.dart';
import 'package:test_app/screen/contacts_screen.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactsScreen(),
    );
  }

}
