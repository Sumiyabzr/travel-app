import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitulaanbaatar/login/fpass/fpass.dart';
import 'package:visitulaanbaatar/login/signup/signup.dart';
import 'package:visitulaanbaatar/login/text_field.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? _isChecked = false;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Image.network(
                      'http://202.179.6.26:8000/asset/login.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white),
                        width: size.width,
                        height: size.height * 0.65,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyTextFields(
                              controller: usernameController,
                              hintText: 'Email',
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            MyTextFields(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _isChecked,
                                            activeColor: Colors.blue,
                                            onChanged: (newBool) {
                                              setState(
                                                () {
                                                  _isChecked = newBool;
                                                },
                                              );
                                            },
                                          ),
                                          Text('Remember me')
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPass(),
                                              ));
                                        },
                                        child: Text('Forgot password?'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/boarding');
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              HexColor('#013B7D'),
                                              HexColor('#1862FF')
                                            ]),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: size.width,
                                      height: size.height * 0.1 - 15,
                                      child: Text(
                                        'Log In',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'or',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100),
                                        width: size.width * 0.28,
                                        height: size.height * 0.12,
                                        child: Image.network(
                                          'http://202.179.6.26:8000/asset/fb.png',
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100),
                                        width: size.width * 0.28,
                                        height: size.height * 0.12,
                                        child: Image.network(
                                          'http://202.179.6.26:8000/asset/google.png',
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100),
                                        width: size.width * 0.28,
                                        height: size.height * 0.12,
                                        child: Icon(
                                          Icons.phone,
                                          size: 25,
                                          color: HexColor('#0047E0'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Don’t have an account?'),
                                          TextButton(
                                              onPressed: () => Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Signup(),
                                                  )),
                                              child: Text('Sign up'))
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
