import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitulaanbaatar/login/text_field.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final newPassController = TextEditingController();
  final confPassController = TextEditingController();
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
                              height: 45,
                            ),
                            MyTextFields(
                                controller: newPassController,
                                hintText: 'New password',
                                obscureText: true),
                            SizedBox(
                              height: 25,
                            ),
                            MyTextFields(
                                controller: confPassController,
                                hintText: 'Confirm password',
                                obscureText: true),
                            SizedBox(
                              height: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: GestureDetector(
                                // onTap: () => Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => Verify(),
                                //     )),
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
                                    'Send Code',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
