import 'package:flutter/gestures.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  'Slider show',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Who is the best player of India Cricket Team ?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    Text('MS Dhoni')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    Text('Virat Kholi')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    Text('Rohit Sharma'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                    child: Text(
                  'See Result',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              News_tab(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class News_tab extends StatelessWidget {
  const News_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: Colors.grey[100],
          borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)
              )
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue),
            child: Center(
                child: Text(
                  'Picture',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Mohil blast : Police find dump of 7000 mobile phones.',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Lion Li',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text:
                          'Contrary to popular belief, Lorem Ipsum is not '
                          'simply random text It has roots in a piece of classical'
                          ' Latin literature from 45 BC, making it over 2000 years '
                          'old. Richard McClintock, a Latin professor at '
                          'Hampden-Sydney College in Virginia, ',
                      style: TextStyle(color: Colors.blue[500])),
                  TextSpan(
                      text: ' Read more.',
                      style: TextStyle(
                          color: Colors.black54,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('');
                        }),
                ])),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.share_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.volume_mute_outlined,
                          color: Colors.orange,
                        ),
                        Text(
                          'Sponsered Post',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '4.5k Viewed',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
