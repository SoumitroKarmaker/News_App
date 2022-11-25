import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../const_data/colors.dart';
import 'bottom_nav_bar.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assects/logo/logo.png'),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'News',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: SelectColor.primary,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Watch',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: SelectColor.secondery,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(label: Text('E-mail')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(label: Text('Code')),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: Center(
                      child: Text(
                        'Verify',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ).onTap(() => BottomNavBar().launch(context)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
