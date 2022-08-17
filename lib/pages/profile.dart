import 'package:flutter/material.dart';
import 'package:flutter_insta_ui/pages/searchPost.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ehsan',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          size: 32,
                        ),
                        Icon(
                          Icons.menu_outlined,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/1.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '32',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              '322',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Folowers',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              '159',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followings',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('* I,m Ehsan *'),
                Text('developer & disigner web,application , Ect.'),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 18),
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.person_add_outlined),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.grid_3x3,
                        size: 32,
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.play_arrow_outlined,
                        size: 32,
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        size: 32,
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
                Divider(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
