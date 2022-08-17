import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;
  final String imageUri;
  Stories({required this.name, required this.imageUri});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(imageUri), fit: BoxFit.fill)),
          ),
          Text(name)
        ],
      ),
    );
  }
}
