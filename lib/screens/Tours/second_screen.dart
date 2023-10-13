import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondTourScreen extends StatefulWidget {
  const SecondTourScreen({super.key});

  @override
  State<SecondTourScreen> createState() => _SecondTourScreenState();
}

class _SecondTourScreenState extends State<SecondTourScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: size.width,
                  child: PageView.builder(
                      controller: _controller,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                            width: size.width,
                            height: 250,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "http://192.168.0.103:7000/asset/brand${index + 1}.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                ),
                SizedBox(
                  width: size.width,
                  height: 245,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: WormEffect(
                          activeDotColor: Colors.red,
                          dotColor: Color.fromARGB(255, 109, 109, 109),
                          dotHeight: 10,
                          dotWidth: 10),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brave New Mongolia',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.link,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'WEBSITE',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.mail_rounded,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'MAIL',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.facebook,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'FACEBOOK',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'NUMBER',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
