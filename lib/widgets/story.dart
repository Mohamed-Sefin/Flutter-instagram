// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/widgets/images.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget storyProfile(
        {required String name, required String dp, required bool add}) {
      if (add == false) {
        return Column(
          children: [
            Container(
              width: 80,
              height: 80,
              child: ClipRRect(
                child: Image.asset(dp),
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            Align(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        );
      } else {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.transparent,
                  child: ClipRRect(
                    child: Image.asset(dp),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                Container(
                  width: 23,
                  height: 23,
                  margin: EdgeInsets.only(top: 52, left: 47),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(top: 54, left: 49),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.add_circle,
                        color: Colors.lightBlue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        );
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15, right: 15),
        children: [
          storyProfile(dp: glogo, name: 'Your story', add: true),
          storyProfile(dp: gdevs, name: 'googledevs', add: false),
          storyProfile(dp: android, name: 'android', add: false),
          storyProfile(dp: yt, name: 'youtube', add: false),
          storyProfile(dp: waymo, name: 'waymo', add: false),
          storyProfile(dp: gindia, name: 'googleindia', add: false),
          storyProfile(dp: gcloud, name: 'googlecloud', add: false),
          storyProfile(dp: waze, name: 'waze', add: false),
        ],
      ),
    );
  }
}
