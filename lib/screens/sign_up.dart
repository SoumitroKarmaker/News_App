import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../const_data/colors.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            AppTextField(textFieldType: TextFieldType.NAME),
          ],
        ),
      ),
    );
  }
}
