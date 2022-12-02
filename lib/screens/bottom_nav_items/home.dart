import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.blue,),
          onPressed: () {},
        ),
        actions: [

          IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: Colors.blue,)),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
