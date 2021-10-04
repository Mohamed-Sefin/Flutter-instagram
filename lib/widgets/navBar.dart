import 'package:flutter/material.dart';
import 'package:instagram/widgets/images.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_outlined, color: Colors.white, size: 33),
          Icon(Icons.search_outlined, color: Colors.white, size: 33),
          Icon(Icons.video_library_outlined, color: Colors.white, size: 33),
          Icon(Icons.favorite_outline, color: Colors.white, size: 33),
          Container(
            width: 35,
            height: 35,
            color: Colors.transparent,
            child: ClipRRect(
              child: Image.asset(glogo),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ],
      ),
    );
  }
}
