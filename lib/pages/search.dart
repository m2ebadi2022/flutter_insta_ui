import 'package:flutter/material.dart';
import 'package:flutter_insta_ui/pages/searchPost.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  scrollPadding: EdgeInsets.symmetric(vertical: 10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              searchPost('1', '2', '3'),
              SizedBox(
                height: 10,
              ),
              searchPost('5', '4', '1'),
              SizedBox(
                height: 10,
              ),
              searchPost('2', '3', '2'),
              SizedBox(
                height: 10,
              ),
              searchPost('5', '4', '3'),
              SizedBox(
                height: 10,
              ),
              searchPost('1', '2', '3'),
              SizedBox(
                height: 10,
              ),
              searchPost('5', '4', '1'),
              SizedBox(
                height: 10,
              ),
              searchPost('2', '3', '2'),
              SizedBox(
                height: 10,
              ),
              searchPost('5', '4', '3'),
            ],
          ),
        ),
      ),
    );
  }
}
