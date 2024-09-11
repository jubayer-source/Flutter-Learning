import 'package:flutter/material.dart';
import 'package:listview_and_builder4/circle.dart';
import 'package:listview_and_builder4/sqaure.dart';

class Homepage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
    'post 10',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
    'story 7',
    'story 8',
    'story 9',
    'story 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [

   // instagram stories
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 100,
          child: Expanded(
              child: ListView.builder(
                  itemCount: _stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyCircle(
                      child: _stories[index],
                    );
                  })),
        ),

// Instagram Posts
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              }),
        ),

        
      ],
    ));
  }
}
