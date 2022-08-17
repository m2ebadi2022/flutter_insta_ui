import 'package:flutter/material.dart';

class Postes extends StatelessWidget {
  final String name;
  final String imageName;
  final String firestLike;
  final int likeNum;
  final String postImage;
  Postes(
      {required this.name,
      required this.imageName,
      required this.firestLike,
      required this.likeNum,
      required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageName),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(postImage), fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.near_me_outlined),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                firestLike,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                likeNum.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'caption hear. ',
              ),
            ],
          ),
        )
      ],
    );
  }
}
