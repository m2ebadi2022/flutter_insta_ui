import 'package:flutter/material.dart';
import 'package:flutter_insta_ui/pages/postes.dart';
import 'package:flutter_insta_ui/pages/stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instageram',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'wanita', fontSize: 35),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.near_me_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, left: 25),
                  child: CircleAvatar(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                    radius: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Stories(name: 'ali', imageUri: 'assets/images/1.jpg'),
                      Stories(name: 'hamid', imageUri: 'assets/images/2.jpg'),
                      Stories(name: 'mahsa', imageUri: 'assets/images/3.jpg'),
                      Stories(name: 'rahil', imageUri: 'assets/images/4.jpg'),
                      Stories(name: 'mani', imageUri: 'assets/images/5.jpg'),
                      Stories(name: 'ali', imageUri: 'assets/images/1.jpg'),
                      Stories(name: 'hamid', imageUri: 'assets/images/2.jpg'),
                      Stories(name: 'mahsa', imageUri: 'assets/images/3.jpg'),
                      Stories(name: 'rahil', imageUri: 'assets/images/4.jpg'),
                    ],
                  ),
                ],
              ),
            ),
            Postes(
                name: 'Ali',
                imageName: 'assets/images/5.jpg',
                firestLike: 'mahsa',
                likeNum: 65,
                postImage: 'assets/images/1.jpg'),
            Postes(
                name: 'Hadi ',
                imageName: 'assets/images/5.jpg',
                firestLike: 'mani',
                likeNum: 21,
                postImage: 'assets/images/3.jpg'),
            Postes(
                name: 'Mahdi ',
                imageName: 'assets/images/4.jpg',
                firestLike: 'mahsa',
                likeNum: 10,
                postImage: 'assets/images/3.jpg'),
            Postes(
                name: 'Keyvan ',
                imageName: 'assets/images/2.jpg',
                firestLike: 'Ali',
                likeNum: 30,
                postImage: 'assets/images/5.jpg'),
          ],
        ),
      ),
    );
  }
}
