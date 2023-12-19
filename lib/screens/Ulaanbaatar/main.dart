import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/citytour.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/Museums/home_screen.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/Place2Visit/home_screen.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/Statues&Monuments/home_screen.dart';

class UlaanbaatarN extends StatefulWidget {
  const UlaanbaatarN({super.key});

  @override
  State<UlaanbaatarN> createState() => _UlaanbaatarNState();
}

class _UlaanbaatarNState extends State<UlaanbaatarN> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ulaanbaatar',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: size.height * 0.24,
                    width: size.width,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: 2,
                        itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                width: size.width,
                                height: size.width * 0.45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/e66a/69ce/65ff87c72554d6a1ad22125eff06b4a7?Expires=1702857600&Signature=gJrG2iqlV3NSm8rrE0rQbQdSE-GLwOZw97Nu7vH-62Y6RAVnkZpbKcuDiDqdtX4hj1FJR2zTBWP4MhrgEC0p6QmZf2Qt72v1zYemk6hw7MYPNi5VrOo5mxJ-GjkRnNVNAvbpMq768FEJd5tMn3mMW4p-x9Uw1TXMhwVQlnHSqwCnDG3Y-KmF8B1Bdg7N5CezfeA8GKfetZRiIjtPULYFW0yfQunM87r0WR8DJJrGIS3MJSI2RcRtLc~7QiTATkfAckm-Vw~bL-GmHCARPfrbt-xBGCzLmlPVOreCMVPHPvkzyDfmIIjadJrd10XH4atPPF87rl18CRk-kTo~G~31Zw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                        ),
                                        fit: BoxFit.cover)),
                              ),

                              // Container(
                              //   width: size.width,
                              //   height: 250,
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(15),
                              //     gradient: LinearGradient(
                              //         begin: Alignment.centerLeft,
                              //         end: Alignment.center,
                              //         colors: [
                              //           HexColor('#7FBFF2'),
                              //           HexColor('#E3F2FD'),
                              //         ]),
                              //     image: DecorationImage(
                              //         image: NetworkImage(
                              //             'http://202.179.6.26:8000/asset/Ellipse.png'),
                              //         alignment: Alignment.topRight),
                              //   ),
                              //   child: Container(
                              //     width: double.infinity,
                              //     height: double.infinity,
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(15),
                              //     ),
                              //     child: Padding(
                              //       padding: const EdgeInsets.symmetric(
                              //           horizontal: 16, vertical: 24),
                              //       child: Column(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.start,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           Column(
                              //             crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //             children: [
                              //               Align(
                              //                 alignment: Alignment.topLeft,
                              //                 child: Image.network(
                              //                   'http://202.179.6.26:8000/asset/ulaanbaatar.png',
                              //                   alignment: Alignment.topLeft,
                              //                 ),
                              //               ),
                              //               SizedBox(
                              //                 height: 10,
                              //               ),
                              //               Text(
                              //                 'Тун удахгүй...',
                              //                 style: TextStyle(
                              //                     color: Colors.white,
                              //                     fontSize: 16,
                              //                     fontWeight: FontWeight.bold),
                              //               )
                              //             ],
                              //           )
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            )),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 190,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 5,
                        effect: WormEffect(
                            activeDotColor: Colors.red,
                            dotColor: Color.fromARGB(255, 109, 109, 109),
                            dotHeight: 8,
                            dotWidth: 8),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaceToVisit(),
                              )),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(2.5, 2.5))
                                ],
                                color: Colors.white),
                            width: size.width * 0.45,
                            height: size.height * 0.12,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                      'http://202.179.6.26:8000/asset/PTV.png'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Places to Visit',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.navigate_next_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Museums(),
                              )),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(2.5, 2.5))
                                ],
                                color: Colors.white),
                            width: size.width * 0.45,
                            height: size.height * 0.12,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    'http://202.179.6.26:8000/asset/Museums.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Museums',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.navigate_next_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatuesMonuments(),
                              )),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(2.5, 2.5))
                                ],
                                color: Colors.white),
                            width: size.width * 0.45,
                            height: size.height * 0.12,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    'http://202.179.6.26:8000/asset/Statue.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Statues & Monuments',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Icon(Icons.navigate_next_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset: Offset(2.5, 2.5))
                              ],
                              color: Colors.white),
                          width: size.width * 0.45,
                          height: size.height * 0.12,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'http://202.179.6.26:8000/asset/reli.png',
                                  width: 32,
                                  height: 32,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Religious institutions',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Icon(Icons.navigate_next_rounded)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CityTour(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#1862FF'),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/pana.png'),
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 8.0, sigmaY: 8.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: size.width * 0.8,
                                    height: size.height * 0.09,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Virtual City Tour',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.play_arrow_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        width: size.width,
                        height: size.height * 0.35,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/yy.png'),
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.contain),
                              color: Colors.black),
                          width: size.width,
                          height: size.height * 0.1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Энд сурталчлаарай ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Сурталчилгаагаа өнөөдрөөс эхлүүл',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 117, 117, 117),
                                offset: Offset(2.0, 3.0))
                          ],
                          color: Colors.white),
                      width: size.width,
                      height: size.height * 0.1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.library_books,
                                      color: HexColor('#BB0F37')),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'History',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              Icon(Icons.play_arrow_rounded)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
