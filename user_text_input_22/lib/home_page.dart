import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // use this controller to get what the user typed;
  final _textController = TextEditingController();

  //store input text in a variable;
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display text
            Expanded(
                child: Container(
              child: Center(
                child: Text(
                  userPost,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            )),

            // Text Input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'What\'s your mind Today?',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear whats currently in the textfield
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),

            MaterialButton(
              onPressed: () {
                //update our string variable to to get into text in a variable
                setState(() {
                  userPost = _textController.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
