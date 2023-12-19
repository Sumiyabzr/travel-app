import 'package:flutter/material.dart';

class Cattle extends StatelessWidget {
  const Cattle({super.key});

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
                          'http://202.179.6.26:8000/asset/cattlethumb.jpg'))),
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
                    'Cattle',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Mongolian cattle, also known as Mongolian yaks, are a vital component of the country`s rural economy and cultural heritage. These majestic creatures have adapted to the harsh and extreme climatic conditions of Mongolia, becoming an integral part of the nomadic lifestyle and contributing to the sustainability of the region. The Mongolian cattle, Bos grunniens, are a unique species that has been domesticated for thousands of years. Their long, shaggy coats protect them from the bitterly cold winters and scorching summers, making them well-suited for the challenging environment of the Mongolian steppes and highlands. Nomadic herders heavily rely on Mongolian cattle for their livelihood. The herds provide essential resources such as meat, milk, wool, and leather, ensuring the self-sufficiency and sustenance of the nomadic communities. Yak milk, in particular, holds significant importance, as it serves as a primary source of nutrition and is used to produce traditional dairy products like aaruul (dried curds). tarag (yogurt) and byaslag(cheese). Beyond sustenance, Mongolian cattle also play a vital role in the transportation of goods and people across the vast landscapes. Their strength and endurance make them reliable pack animals, allowing nomadic herders to move their camps and belongings from one pasture to another in search of fresh grazing lands.',
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
                                  'http://202.179.6.26:8000/asset/cattle1.jpg'),
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
                                  'http://202.179.6.26:8000/asset/cattlethumb.jpg'),
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
                    'Furthermore, Mongolian cattle are an essential part of the ecosystem, as they contribute to the grassland`s preservation and regeneration. Through their grazing habits, they promote the growth of new vegetation, preventing grasslands from becoming overgrown and reducing the risk of wildfires. In recent years, the unique qualities and sustainable practices associated with Mongolian cattle have drawn attention from international markets. The demand for yak products, such as yak wool clothing and yak milk-based products, has increased, providing economic opportunities for Mongolian herders and contributing to the country`s export revenues. Despite their significance, Mongolian cattle face challenges, including climate change and unsustainable grazing practices. Changing weather patterns and harsher winters can impact the availability of grazing lands and the well-being of the herds. Additionally, overgrazing in certain areas can lead to soil degradation and desertification. Efforts are being made to preserve and sustain the Mongolian cattle population. Projects focusing on sustainable pasture management, breed preservation, and community-based conservation are being implemented to ensure the continued well-being of these remarkable creatures and the traditional way of life they support.',
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
                                  'http://202.179.6.26:8000/asset/cattle2.jpg'),
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
                                  'http://202.179.6.26:8000/asset/cattle3.jpg'),
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
