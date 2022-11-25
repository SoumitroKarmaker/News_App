import 'package:flutter/material.dart';

class Poll extends StatefulWidget {
  const Poll({Key? key}) : super(key: key);

  @override
  State<Poll> createState() => _PollState();
}

class _PollState extends State<Poll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Poll',style: TextStyle(fontSize: 50),),),
    );
  }
}
