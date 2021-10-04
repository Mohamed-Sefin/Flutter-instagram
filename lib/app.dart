import 'package:flutter/material.dart';
import 'package:instagram/widgets/post.dart';
import 'package:instagram/widgets/story.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          Story(),
          Divider(
            color: Colors.grey[700],
            height: 1,
          ),
          Post(),
        ],
      ),
    );
  }
}
