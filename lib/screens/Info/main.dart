import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/History/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/Religion/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/home_screen.dart';

class InfoN extends StatefulWidget {
  const InfoN({super.key});

  @override
  State<InfoN> createState() => _InfoNState();
}

class _InfoNState extends State<InfoN> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NomadicScreen(),
                    )),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/infoNLS.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    width: size.width * 0.43,
                    height: size.height * 0.2,
                  ),
                  Text(
                    'Nomadic life style',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryInfo(),
                    )),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/infoHistory.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      width: size.width * 0.43,
                      height: size.height * 0.2,
                    ),
                    Text('History',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/infoContent.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    width: size.width * 0.43,
                    height: size.height * 0.2,
                  ),
                  Text('Content',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ToursitInformation(),
                    )),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/infoTour.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      width: size.width * 0.43,
                      height: size.height * 0.2,
                    ),
                    Text('Tourist information',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReligionHome(),
                    )),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/infoReligion.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      width: size.width * 0.43,
                      height: size.height * 0.2,
                    ),
                    Text('Religion',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
