import 'dart:math';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/images.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider() {
      return Divider(
        color: Colors.grey[700],
        height: 1,
      );
    }

    Widget PostContainer(
        {required String dp, required String name, required String post}) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 620,
        color: Colors.black,
        child: Column(
          children: [
            Divider(height: 2),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      child: Image.asset(dp),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 100,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 220),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.transparent, height: 5),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Image.asset(post),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 60,
                    margin: EdgeInsets.only(right: 220),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite_rounded,
                            color: Colors.redAccent, size: 35),
                        Icon(Icons.mode_comment_outlined,
                            color: Colors.white, size: 28),
                        Transform.rotate(
                          angle: 180 * pi / 78,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 11),
                            child: Icon(Icons.details_outlined,
                                color: Colors.white, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Icon(Icons.bookmark_border_outlined,
                        color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        PostContainer(
          dp: gcloud,
          name: 'googlecloud',
          post: gcloudpost,
        ),
        divider(),
        PostContainer(
          dp: sundarpichai,
          name: 'sundarpichai',
          post: jeffree,
        ),
        divider(),
        PostContainer(
          dp: android,
          name: 'android',
          post: samzfold,
        ),
        divider(),
        PostContainer(
          dp: yt,
          name: 'youtube',
          post: bts,
        ),
        divider(),
        PostContainer(
          dp: gdevs,
          name: 'googledevs',
          post: devsummit,
        ),
        divider(),
        PostContainer(
          dp: waymo,
          name: 'waymo',
          post: waymopost,
        ),
        divider(),
        PostContainer(
          dp: waze,
          name: 'waze',
          post: wazepost,
        ),
      ],
    );
  }
}
