import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
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
                prefixIcon: Icon(Icons.search,color: Colors.deepOrange,),
                // suffixIcon: Icon(Icons.sea,color: Colors.deepOrange,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
