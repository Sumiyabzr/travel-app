import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/day.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/day2.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/day3.dart';

class CityTour extends StatefulWidget {
  const CityTour({super.key});

  @override
  State<CityTour> createState() => _CityTourState();
}

class _CityTourState extends State<CityTour> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Virtual city tour',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(255, 154, 192, 221),
                                const Color.fromARGB(255, 216, 237, 252)
                              ]),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: size.width,
                        height: size.height * 0.22,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 5),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.65,
                              height: size.height * 0.15,
                              child: Text(
                                'The virtual Tour Guide Anar from BraveNewMongoliaTours is here to guide you through the most optimal itinerary to experience our Capital City.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        width: size.width * 0.5,
                        height: size.width * 0.5,
                        right: size.height * 0.0001 - size.height * 0.05,
                        bottom: size.height * 0.0001 - size.height * 0.035,
                        child: Image(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/me.png'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Virtual city tour',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DayScreen(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/Other/city_tour_new2.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 0, sigmaY: 0),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      child: Text(
                                                        'Day 1',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Day2Screen(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/Other/city_tour_new.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 0, sigmaY: 0),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      child: Text(
                                                        'Day 2',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Day3Screen(),
                                    )),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/Other/telej_new_1.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 0, sigmaY: 0),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      child: Text(
                                                        'Day 3',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gobi factory tour',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.mogol.mn/images/gallery/0/eb68a166ca6617a13fd11c4f18a9dfab.JPG'),
                          fit: BoxFit.cover),
                    ),
                    width: size.width,
                    height: size.width * 0.45,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                SizedBox(
                  height: size.height * 0.24,
                  width: size.width,
                  child: PageView.builder(
                      controller: _controller,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade300,
                                image: DecorationImage(
                                    image: NetworkImage(""), fit: BoxFit.cover),
                              ),
                            ),
                          )),
                ),
                SizedBox(
                  width: size.width,
                  height: size.width * 0.5,
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
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Brave new Mongolia',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.blue.shade100,
                    ),
                    width: size.width,
                    height: size.width * 0.28,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width: size.width * 0.28,
                                  height: size.height,
                                  child: Icon(
                                    Icons.video_collection_sharp,
                                    size: 30,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width: size.width * 0.28,
                                  height: size.height,
                                  child: Icon(
                                    Icons.phone,
                                    size: 30,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width: size.width * 0.28,
                                  height: size.height,
                                  child: Icon(
                                    Icons.blur_circular_sharp,
                                    size: 30,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
