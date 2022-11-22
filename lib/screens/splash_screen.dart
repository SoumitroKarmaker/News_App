import 'package:flutter/material.dart';
import 'package:news_app/screens/sign_up.dart';
import '../const_data/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Goto();
  }

  Goto() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUP()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assects/logo/logo.png'),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: 'News',style: TextStyle(fontSize: 30,color: SelectColor.primary,fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Watch',style: TextStyle(fontSize: 30,color: SelectColor.secondery,fontWeight: FontWeight.bold)),
                    ]),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
