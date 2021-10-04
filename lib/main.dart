import 'package:flutter/material.dart';
import 'package:instagram/app.dart';
import 'package:instagram/widgets/navBar.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'instagrambody'),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            'Instagram',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'instagram',
              fontSize: 30,
            ),
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.chat_bubble_outline),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        bottomNavigationBar: NavBar(),
        body: MyApp(),
      ),
    ),
  );
}
