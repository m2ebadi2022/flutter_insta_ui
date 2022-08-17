import 'package:flutter/material.dart';

class searchPost extends StatelessWidget {
  final String imageName1;
  final String imageName2;
  final String imageName3;
  searchPost(
    this.imageName1,
    this.imageName2,
    this.imageName3,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('assets/images/' + imageName1 + '.jpg'),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('assets/images/' + imageName2 + '.jpg'),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('assets/images/' + imageName3 + '.jpg'),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
