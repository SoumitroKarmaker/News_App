import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:news_app/screens/verify.dart';

import '../const_data/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  decoration: InputDecoration(label: Text('Username')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(label: Text('E-mail')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(label: Text('Password')),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Radio Button
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
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ).onTap(()=> Verify().launch(context)),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  thickness: 1,
                ),
                Text('or Sign In with'),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assects/logo/google.png',
                          )),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assects/logo/facebook.png',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assects/logo/gmail.png',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assects/logo/twitter.png',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assects/logo/apple.png',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14)),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
