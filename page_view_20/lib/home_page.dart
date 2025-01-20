import 'package:flutter/material.dart';
import 'package:page_view_20/posts/post_1.dart';
import 'package:page_view_20/posts/post_2.dart';
import 'package:page_view_20/posts/post_3.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          return true; // This can help capture scroll events for debugging.
        },
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          
          children: const [
            MyPost1(),
            MyPost2(),
            MyPost3(),
          ],
        ),
      ),
    );
  }
}

