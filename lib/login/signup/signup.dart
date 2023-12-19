import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitulaanbaatar/login/signup/verify.dart';
import 'package:visitulaanbaatar/login/text_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confpasswordController = TextEditingController();

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
                              height: 15,
                            ),
                            MyTextFields(
                              controller: nameController,
                              hintText: 'Your name',
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextFields(
                              controller: usernameController,
                              hintText: 'Email',
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextFields(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextFields(
                              controller: confpasswordController,
                              hintText: 'Confirm password',
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignVerify(),
                                    )),
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
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'or',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade100),
                                    width: size.width * 0.28,
                                    height: size.height * 0.10,
                                    child: Image.network(
                                      'http://202.179.6.26:8000/asset/fb.png',
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade100),
                                    width: size.width * 0.28,
                                    height: size.height * 0.10,
                                    child: Image.network(
                                      'http://202.179.6.26:8000/asset/google.png',
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade100),
                                    width: size.width * 0.28,
                                    height: size.height * 0.10,
                                    child: Icon(
                                      Icons.phone,
                                      size: 25,
                                      color: HexColor('#0047E0'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('Already have an account?'),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text('Sign in'))
                                  ],
                                ),
                              ],
                            )
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
