import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('a'),
          elevation: 0.0),
      
      body: Column(
        children:  [
       Container(height: MediaQuery.of(context),)
        ],
      ),
    );
  }
}
