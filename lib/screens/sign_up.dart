import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:news_app/screens/sign_in.dart';

import '../const_data/colors.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  int _value = 1;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                  controller: userNameController,
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(label: Text('Username')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  controller: emailController,
                  textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(label: Text('E-mail')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  controller: phoneNumberController,
                  textFieldType: TextFieldType.NUMBER,
                  decoration: InputDecoration(label: Text('Phone Number')),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextField(
                  controller: passwordController,
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(label: Text('Password')),
                ),
                SizedBox(
                  height: 30,
                ),
                AppTextField(
                  controller: confirmPasswordController,
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(label: Text('Confirm Password')),
                ),
                SizedBox(
                  height: 30,
                ),
                // Radio Button
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I am a',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Text('Media Repoter'),
                        SizedBox(
                          width: 20,
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
                        Text('Visitor'),
                      ],
                    ),
                  ],
                ),
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
                ).onTap(() {}),
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
                          )).onTap(() => SignIn().launch(context)),
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
                Text('By signing up to News24 you are accecpting our ',
                    style: TextStyle(color: Colors.black, fontSize: 12)),
                Text('Trems & Conditions',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
