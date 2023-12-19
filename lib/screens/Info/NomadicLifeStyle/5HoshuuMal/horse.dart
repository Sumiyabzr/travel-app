import 'package:flutter/material.dart';

class Horse extends StatelessWidget {
  const Horse({super.key});

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
                          'http://202.179.6.26:8000/asset/horse4.jpg'))),
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
                    'Horse',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'The Mongolian horse, renowned for its extraordinary endurance and resilience, stands as a symbol of the nomadic lifestyle and rich equestrian heritage of Mongolia. For centuries, this magnificent breed has been an indispensable companion to the Mongolian people, facilitating their nomadic lifestyle, trade, and warfare. The Mongolian horse, also known as the Mongol horse or Mongolian pony, is a small yet robust breed, well-adapted to the harsh and demanding terrain of the Mongolian steppes. Its compact size, hardy constitution, and incredible agility allow it to navigate through rugged landscapes with ease. These horses are known for their natural pacing gait called "tölt," which provides a smooth and comfortable ride even over long distances. Endurance is one of the Mongolian horse`s defining characteristics. It can cover vast distances without tiring quickly, making it ideal for long journeys and the traditional sport of horse racing. Naadam, Mongolia`s annual festival, includes horse racing as one of its primary events, showcasing the exceptional speed and stamina of these horses. The bond between the Mongolian people and their horses runs deep in their cultural fabric. Nomadic families rely on these steeds for transportation, herding livestock, and even as sources of food and clothing. The Mongolian horse`s ability to graze on sparse vegetation allows it to thrive in an environment where other livestock might struggle.',
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
                                  'http://202.179.6.26:8000/asset/horse1.jpg'),
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
                                  'http://202.179.6.26:8000/asset/horse2.jpg'),
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
                                  'http://202.179.6.26:8000/asset/horse3.jpg'),
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
                    'Despite their wild and independent nature, Mongolian horses have a strong connection with their human handlers. They are trained using traditional methods from an early age, fostering a sense of trust and mutual understanding between the horse and its rider.In times of war, the Mongolian horse played a crucial role in the success of the Mongol Empire, founded by Genghis Khan. The mobility and agility of the horses allowed the Mongol warriors to execute their famous hit-and-run tactics, swiftly overwhelming their enemies and establishing one of the largest empires in history.The Mongolian horse is a testament to the enduring spirit of Mongolia and its people. Its remarkable adaptability, toughness, and indomitable spirit have earned it a place of reverence and admiration in Mongolian culture. As a symbol of freedom, independence, and resilience, the Mongolian horse continues to gallop across the vast steppes, carrying the legacy of a nation deeply connected to its equestrian roots.',
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
                                  'http://202.179.6.26:8000/asset/horse5.jpg'),
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
                                  'http://202.179.6.26:8000/asset/horse6.jpg'),
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
