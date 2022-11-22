import 'package:flutter/material.dart';
import 'package:news_app/screens/splash_Screen.dart';

import 'const_data/colors.dart';

void main ()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: SelectColor.background,
      ),
      home: SplashScreen(),
    );
  }
}
