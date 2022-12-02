import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
            SizedBox(height: 10,),
            Text(
              'Who is the best player of India Cricket Team ?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
