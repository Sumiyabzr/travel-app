import 'package:flutter/material.dart';

class Archery extends StatelessWidget {
  const Archery({super.key});

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
                          'http://202.179.6.26:8000/asset/surthumb.jpg'))),
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
                        SafeArea(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                size: 28,
                                color: Colors.white,
                              ),
                              iconSize: 25,
                            ),
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
                    'Archery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Mongolian archery is another traditional sport deeply ingrained in Mongolian culture and history. Like Mongolian wrestling, archery has roots in the nomadic lifestyle and has been practiced for centuries. It was an essential skill for the Mongolian warriors during the time of Genghis Khan and the Mongol Empire, and it continues to be an integral part of Mongolian culture and celebrations.In Mongolian archery, traditional composite bows are used. These bows are made from various materials such as wood, horn, and sinew, resulting in a compact, powerful, and lightweight design. The use of traditional bows adds to the authenticity and cultural significance of the sport.',
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
                                  'http://202.179.6.26:8000/asset/harwaa1.jpg'),
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
                                  'http://202.179.6.26:8000/asset/harwaa2.jpg'),
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
                    'Festivals and Competitions: Archery competitions are commonly held during traditional Mongolian festivals, especially during the Naadam festival. The Naadam festival includes various sports, and archery is one of the "Three Manly Games," alongside wrestling and horse racing. In Mongolian archery, the targets are typically made of stacked layers of felt or other materials. Each archer shoots a set number of arrows, and points are scored based on the distance from the center of the target. Mongolian archery is more than just a sport; it holds cultural and spiritual significance. It is seen as a way to honor tradition and connect with the country is nomadic past. Archery competitions during festivals serve as a means of showcasing the skills and prowess of the participants. Efforts are made to preserve and promote traditional archery in Mongolia. Archery schools and clubs exist to pass down the knowledge and skills to the younger generations, ensuring that this important aspect of Mongolian heritage continues to thrive. Also Mongolian archery is known for its unique form of horseback archery. Competitors shoot arrows while riding on horseback at full gallop. This requires exceptional horsemanship, balance, and accuracy.Mongolian archery remains an important part of the country is identity, reflecting its rich nomadic history and warrior traditions. The sport not only entertains but also serves as a reminder of Mongolia is proud past and the skills that were crucial for survival in the challenging landscapes of Central Asia.',
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
                                  'http://202.179.6.26:8000/asset/harwaa3.jpg'),
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
                                  'http://202.179.6.26:8000/asset/harwaa4.jpg'),
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
