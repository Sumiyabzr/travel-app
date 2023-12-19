import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/screens/Tours/detail.dart';

class SecondTourScreen extends StatefulWidget {
  const SecondTourScreen({super.key});

  @override
  State<SecondTourScreen> createState() => _SecondTourScreenState();
}

class _SecondTourScreenState extends State<SecondTourScreen> {
  List<String> tabs = [
    "All"
        "Adventurous"
        "Family"
        "Horseback"
  ];

  int current = 0;

  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Column(
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
                                          "http://202.179.6.26:8000/asset/brand${index + 1}.jpg"),
                                      fit: BoxFit.cover)),
                            )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SafeArea(
                        child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_rounded)),
                      ),
                    ),
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: NetworkImage(
                            'http://202.179.6.26:8000/asset/juulchinlogo.png',
                          ),
                          width: 96,
                          height: 96,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Juulchin Tourism',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#E8EFFF'),
                      ),
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: HexColor('#1862FF'),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text('+976 99094376'),
                                Spacer(
                                  flex: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    FlutterClipboard.copy('+976 99094376');
                                  },
                                  child: Icon(Icons.copy),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: HexColor('#1862FF'),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text('info@juulchin.com'),
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(Icons.copy)
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.link,
                                  color: HexColor('#1862FF'),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text('juulchin.com'),
                                Spacer(
                                  flex: 11,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.facebook_outlined,
                                  color: HexColor('#1862FF'),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text('Juulchin tourism mongolia'),
                                Spacer(
                                  flex: 11,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mongolia is vast and one of the most amazing places on the earth and no one will argue on it. It has such as beautiful natural formation, unique nomadic culture, huge history and Mongolian are very hospitable. They have kept them for many centuries generation to generation.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TabBar(
                      labelColor: Colors.black,
                      isScrollable: true,
                      indicator: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [HexColor('#1862FF'), HexColor('#5A9BF8')]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      tabs: [
                        Tab(
                          text: '     All     ',
                        ),
                        Tab(
                          text: '  Adventurous  ',
                        ),
                        Tab(
                          text: '    Family    ',
                        ),
                        Tab(
                          text: '   Horseback   ',
                        ),
                        Tab(
                          text: '   Luxurious   ',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ToursDetail(),
                          )),
                      child: Container(
                        height: size.height * 0.13,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        child: Row(
                          children: [
                            Container(
                              width: size.height * 0.15,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/test.jpg'))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Text(
                                    'Wonders Around UB',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '2 Days',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Icon(
                                            Icons.attach_money_rounded,
                                            size: 15,
                                          ),
                                          Text('283')
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //     backgroundColor: Colors.white,
    //     body: Column(
    //       // physics: BouncingScrollPhysics(),
    //       children: [
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Stack(
    //               children: [
    //                 SizedBox(
    //                   height: 250,
    //                   width: size.width,
    //                   child: PageView.builder(
    //                       controller: _controller,
    //                       clipBehavior: Clip.antiAliasWithSaveLayer,
    //                       itemCount: 4,
    //                       itemBuilder: (context, index) => Container(
    //                             width: size.width,
    //                             height: 250,
    //                             decoration: BoxDecoration(
    //                                 image: DecorationImage(
    //                                     image: NetworkImage(
    //                                         "http://202.179.6.26:8000/asset/brand${index + 1}.jpg"),
    //                                     fit: BoxFit.cover)),
    //                           )),
    //                 ),
    //                 Padding(
    //                   padding:
    //                       EdgeInsets.symmetric(horizontal: 5, vertical: 25),
    //                   child: Align(
    //                     alignment: Alignment.topLeft,
    //                     child: IconButton(
    //                         onPressed: () => Navigator.pop(context),
    //                         icon: Icon(Icons.arrow_back_rounded)),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: size.width,
    //                   height: 245,
    //                   child: Align(
    //                     alignment: Alignment.bottomCenter,
    //                     child: SmoothPageIndicator(
    //                       controller: _controller,
    //                       count: 4,
    //                       effect: WormEffect(
    //                           activeDotColor: Colors.red,
    //                           dotColor: Color.fromARGB(255, 109, 109, 109),
    //                           dotHeight: 10,
    //                           dotWidth: 10),
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    // DecoratedBox(
    //   decoration:
    //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         Image(
    //           image: NetworkImage(
    //               'http://202.179.6.26:8000/asset/juulchinlogo.png'),
    //           height: 96,
    //           width: 96,
    //         ),
    //         SizedBox(
    //           width: 13,
    //         ),
    //         Text(
    //           'Juulchin Tourism',
    //           style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 18,
    //               fontWeight: FontWeight.w700),
    //         )
    //       ],
    //     ),
    //   ),
    // ),
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 20),
    //               child: Column(
    //                 children: [
    //                   Container(
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(8),
    //                         color: const Color.fromARGB(255, 248, 248, 248)),
    //                     width: size.width,
    //                     height: size.height * 0.37,
    //                     padding:
    //                         EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                             'Mongolia is vast and one of the most amazing places on the earth and no one will argue on it. It has such as beautiful natural formation, unique nomadic culture, huge history and Mongolian are very hospitable. They have kept them for many centuries generation to generation. '),
    //                         SizedBox(
    //                           height: 16,
    //                         ),
    //                         Row(
    //                           children: [
    //                             Icon(
    //                               Icons.phone,
    //                               size: 24,
    //                             ),
    //                             SizedBox(
    //                               width: 16,
    //                             ),
    //                             Text(
    //                               '+976 99094376',
    //                               style: TextStyle(
    //                                   fontWeight: FontWeight.w500,
    //                                   fontSize: 12),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 8,
    //                         ),
    //                         Row(
    //                           children: [
    //                             Icon(
    //                               Icons.email,
    //                               size: 24,
    //                             ),
    //                             SizedBox(
    //                               width: 16,
    //                             ),
    //                             Text(
    //                               'info@juulchin.com',
    //                               style: TextStyle(
    //                                   fontSize: 12,
    //                                   fontWeight: FontWeight.w500),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 8,
    //                         ),
    //                         Row(
    //                           children: [
    //                             Icon(
    //                               Icons.travel_explore_rounded,
    //                               size: 24,
    //                             ),
    //                             SizedBox(
    //                               width: 16,
    //                             ),
    //                             Text(
    //                               'juulchin.com',
    //                               style: TextStyle(
    //                                   fontSize: 12,
    //                                   fontWeight: FontWeight.w500),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 8,
    //                         ),
    //                         Row(
    //                           children: [
    //                             Icon(
    //                               Icons.facebook,
    //                               size: 24,
    //                             ),
    //                             SizedBox(
    //                               width: 16,
    //                             ),
    //                             Text(
    //                               'Juulchin tourism mongolia',
    //                               style: TextStyle(
    //                                   fontSize: 12,
    //                                   fontWeight: FontWeight.w500),
    //                             )
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 10,
    //                   ),
    //                   /////////////////////////////////////////////////////////////////////////////////////////////////////
    //                   // TabBar(
    //                   //   labelColor: Colors.black,
    //                   //   isScrollable: true,
    //                   //   indicator: BoxDecoration(
    //                   //     gradient: LinearGradient(
    //                   //         begin: Alignment.centerLeft,
    //                   //         end: Alignment.centerRight,
    //                   //         colors: [
    //                   //           HexColor('#1862FF'),
    //                   //           HexColor('#5A9BF8')
    //                   //         ]),
    //                   //     borderRadius: BorderRadius.circular(30),
    //                   //   ),
    //                   //   tabs: [
    //                   //     Tab(
    //                   //       text: '     All     ',
    //                   //     ),
    //                   //     Tab(
    //                   //       text: '  Adventurous  ',
    //                   //     ),
    //                   //     Tab(
    //                   //       text: '    Family    ',
    //                   //     ),
    //                   //     Tab(
    //                   //       text: '   Horseback   ',
    //                   //     )
    //                   //   ],
    //                   // ),

    //                   ////////////////////////////////////////////////////////////////////////////////////////////////////////
    //                   SingleChildScrollView(
    //                     scrollDirection: Axis.horizontal,
    //                     child: Row(
    //                       children: [
    //                         Padding(
    //                           padding: EdgeInsets.symmetric(vertical: 16),
    //                           child: Container(
    //                             alignment: Alignment.center,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(16),
    //                                 color: Color.fromARGB(255, 235, 235, 235)),
    //                             width: 51,
    //                             height: 36,
    //                             child: Text(
    //                               'All',
    //                               style: TextStyle(
    //                                 fontSize: 16,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8,
    //                         ),
    //                         Container(
    //                           alignment: Alignment.center,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(16),
    //                               color: Color.fromARGB(255, 235, 235, 235)),
    //                           width: 122,
    //                           height: 36,
    //                           child: Text(
    //                             'Adventurous',
    //                             style: TextStyle(
    //                               fontSize: 16,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8,
    //                         ),
    //                         Container(
    //                           alignment: Alignment.center,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(16),
    //                               color: Color.fromARGB(255, 235, 235, 235)),
    //                           width: 79,
    //                           height: 36,
    //                           child: Text(
    //                             'Family',
    //                             style: TextStyle(
    //                               fontSize: 16,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8,
    //                         ),
    //                         Container(
    //                           alignment: Alignment.center,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(16),
    //                               color: Color.fromARGB(255, 235, 235, 235)),
    //                           width: 109,
    //                           height: 36,
    //                           child: Text(
    //                             'Horseback',
    //                             style: TextStyle(
    //                               fontSize: 16,
    //                             ),
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                   GestureDetector(
    //                     // onTap: () => Navigator.push(
    //                     //     context,
    //                     //     MaterialPageRoute(
    //                     //       builder: (context) => Third(),
    //                     //     )),
    //                     child: Container(
    //                       height: size.height * 0.13,
    //                       width: double.infinity,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(15),
    //                           color: const Color.fromARGB(255, 255, 255, 255)),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             width: size.height * 0.15,
    //                             height: double.infinity,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(15),
    //                                 image: DecorationImage(
    //                                     fit: BoxFit.cover,
    //                                     image: NetworkImage(
    //                                         'http://202.179.6.26:8000/asset/test.jpg'))),
    //                           ),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Padding(
    //                                 padding: EdgeInsets.symmetric(
    //                                     horizontal: 10, vertical: 10),
    //                                 child: Text(
    //                                   'Wonders Around UB',
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w600),
    //                                 ),
    //                               ),
    //                               Column(
    //                                 children: [
    //                                   Padding(
    //                                     padding: EdgeInsets.symmetric(
    //                                       horizontal: 18,
    //                                     ),
    //                                     child: Row(
    //                                       children: [
    //                                         Text(
    //                                           '2 Days',
    //                                           style: TextStyle(
    //                                               fontSize: 16,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         SizedBox(
    //                                           width: 10,
    //                                         ),
    //                                         Text(
    //                                           'From',
    //                                           style: TextStyle(
    //                                               fontSize: 14,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         Icon(
    //                                           Icons.attach_money_rounded,
    //                                           size: 15,
    //                                         ),
    //                                         Text('253')
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ],
    //                               )
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 8,
    //                   ),
    //                   GestureDetector(
    //                     // onTap: () => Navigator.push(
    //                     //     context,
    //                     //     MaterialPageRoute(
    //                     //       builder: (context) => Third(),
    //                     //     )),
    //                     child: Container(
    //                       height: size.height * 0.13,
    //                       width: double.infinity,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(15),
    //                           color: const Color.fromARGB(255, 255, 255, 255)),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             width: size.height * 0.15,
    //                             height: double.infinity,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(15),
    //                                 image: DecorationImage(
    //                                     fit: BoxFit.cover,
    //                                     image: NetworkImage(
    //                                         'http://202.179.6.26:8000/asset/test.jpg'))),
    //                           ),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Padding(
    //                                 padding: EdgeInsets.symmetric(
    //                                     horizontal: 10, vertical: 10),
    //                                 child: Text(
    //                                   'Wonders Around UB',
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w600),
    //                                 ),
    //                               ),
    //                               Column(
    //                                 children: [
    //                                   Padding(
    //                                     padding: EdgeInsets.symmetric(
    //                                       horizontal: 18,
    //                                     ),
    //                                     child: Row(
    //                                       children: [
    //                                         Text(
    //                                           '2 Days',
    //                                           style: TextStyle(
    //                                               fontSize: 16,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         SizedBox(
    //                                           width: 10,
    //                                         ),
    //                                         Text(
    //                                           'From',
    //                                           style: TextStyle(
    //                                               fontSize: 14,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         Icon(
    //                                           Icons.attach_money_rounded,
    //                                           size: 15,
    //                                         ),
    //                                         Text('283')
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ],
    //                               )
    //                             ],
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 8,
    //                   ),
    //                   GestureDetector(
    //                     // onTap: () => Navigator.push(
    //                     //     context,
    //                     //     MaterialPageRoute(
    //                     //       builder: (context) => Third(),
    //                     //     )),
    //                     child: Container(
    //                       height: size.height * 0.13,
    //                       width: double.infinity,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(15),
    //                           color: const Color.fromARGB(255, 255, 255, 255)),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             width: size.height * 0.15,
    //                             height: double.infinity,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(15),
    //                                 image: DecorationImage(
    //                                     fit: BoxFit.cover,
    //                                     image: NetworkImage(
    //                                         'http://202.179.6.26:8000/asset/test.jpg'))),
    //                           ),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Padding(
    //                                 padding: EdgeInsets.symmetric(
    //                                     horizontal: 10, vertical: 10),
    //                                 child: Text(
    //                                   'Wonders Around UB',
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w600),
    //                                 ),
    //                               ),
    //                               Column(
    //                                 children: [
    //                                   Padding(
    //                                     padding: EdgeInsets.symmetric(
    //                                       horizontal: 18,
    //                                     ),
    //                                     child: Row(
    //                                       children: [
    //                                         Text(
    //                                           '2 Days',
    //                                           style: TextStyle(
    //                                               fontSize: 16,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         SizedBox(
    //                                           width: 10,
    //                                         ),
    //                                         Text(
    //                                           'From',
    //                                           style: TextStyle(
    //                                               fontSize: 14,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         Icon(
    //                                           Icons.attach_money_rounded,
    //                                           size: 15,
    //                                         ),
    //                                         Text('273')
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ],
    //                               )
    //                             ],
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   Column(
    //                     children: [
    //                       Container(
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.pink,
    //                         ),
    //                         width: size.width,
    //                         height: 96,
    //                       )
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: 8,
    //                   ),
    //                   GestureDetector(
    //                     // onTap: () => Navigator.push(
    //                     //     context,
    //                     //     MaterialPageRoute(
    //                     //       builder: (context) => Third(),
    //                     //     )),
    //                     child: Container(
    //                       height: size.height * 0.13,
    //                       width: double.infinity,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(15),
    //                           color: const Color.fromARGB(255, 255, 255, 255)),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             width: size.height * 0.15,
    //                             height: double.infinity,
    //                             decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(15),
    //                                 image: DecorationImage(
    //                                     fit: BoxFit.cover,
    //                                     image: NetworkImage(
    //                                         'http://202.179.6.26:8000/asset/test.jpg'))),
    //                           ),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Padding(
    //                                 padding: EdgeInsets.symmetric(
    //                                     horizontal: 10, vertical: 10),
    //                                 child: Text(
    //                                   'Wonders Around UB',
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w600),
    //                                 ),
    //                               ),
    //                               Column(
    //                                 children: [
    //                                   Padding(
    //                                     padding: EdgeInsets.symmetric(
    //                                       horizontal: 18,
    //                                     ),
    //                                     child: Row(
    //                                       children: [
    //                                         Text(
    //                                           '2 Days',
    //                                           style: TextStyle(
    //                                               fontSize: 16,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         SizedBox(
    //                                           width: 10,
    //                                         ),
    //                                         Text(
    //                                           'From',
    //                                           style: TextStyle(
    //                                               fontSize: 14,
    //                                               fontWeight: FontWeight.w400),
    //                                         ),
    //                                         Icon(
    //                                           Icons.attach_money_rounded,
    //                                           size: 15,
    //                                         ),
    //                                         Text('293')
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ],
    //                               )
    //                             ],
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 10,
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //         //////////////////////////////////////////////////////////////////////////////////////////
    //         // Expanded(
    //         //   child: TabBarView(
    //         //     children: [
    //         //       Center(
    //         //         child: Destinations(),
    //         //       ),
    //         //       Center(
    //         //         child: Accommodation(),
    //         //       ),
    //         //       Center(
    //         //         child: Commercial_screen(),
    //         //       ),
    //         //       Center(
    //         //         child: Events_screen(),
    //         //       ),
    //         //     ],
    //         //   ),
    //         // )
    //         //////////////////////////////////////////////////////////////////////////////////////////
    //       ],
    //     ),
    //   ),
    // );
  }
}
