import 'package:flutter/material.dart';

class Camel extends StatelessWidget {
  const Camel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: NetworkImage(
                          'http://202.179.6.26:8000/asset/camelthumb.jpg'))),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_sharp),
                            iconSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Camel',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'The Mongolian camel, also known as the Bactrian camel (Camelus bactrianus), is an iconic symbol of the Gobi Desert and a vital part of Mongolia`s unique pastoral culture. With its distinctive double hump and ability to thrive in the arid and harsh desert conditions, the Mongolian camel has been an indispensable companion to the nomadic herders for centuries. The Bactrian camel is well-adapted to the extreme weather variations of the Gobi Desert, where temperatures can fluctuate drastically from scorching heat during the day to freezing cold at night. Their thick fur provides insulation against the harsh elements, and their ability to conserve water allows them to survive for extended periods without access to fresh sources. Nomadic herders rely on Mongolian camels for transportation, as they can carry heavy loads over long distances through the desert. Camels have been essential for trade and communication between different nomadic communities and for reaching remote locations where other animals might struggle to traverse. Moreover, camels are an essential source of sustenance for the nomads. Their milk is highly nutritious and is a primary component of the nomadic diet, providing essential nutrients in an environment where fresh food might be scarce. The milk can also be fermented into airag, a traditional Mongolian drink.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/camel1.jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/camel2.jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'In addition to milk, camel meat is consumed by the nomads and is prized for its taste and nutritional value. Camel hair is used to make a variety of products, including ropes, blankets, and clothing, demonstrating the versatility of this magnificent animal and its contribution to the nomadic lifestyle. In the modern era, the importance of Mongolian camels has extended beyond the Gobi Desert. Tourists from around the world seek camel trekking experiences, providing additional income opportunities for the nomadic communities and contributing to the local economy. However, like other traditional practices, camel herding faces challenges, including environmental degradation and changing climate patterns. Overgrazing and desertification pose threats to the delicate balance of the Gobi Desert`s ecosystem, affecting the well-being of both the camels and the nomadic herders. Efforts are being made to promote sustainable practices and raise awareness of the importance of preserving the unique heritage associated with Mongolian camels. Collaborative projects aim to protect the delicate desert ecosystem while ensuring the livelihood and well-being of the nomadic communities.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/camel3.jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/camel4.jpg'),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
