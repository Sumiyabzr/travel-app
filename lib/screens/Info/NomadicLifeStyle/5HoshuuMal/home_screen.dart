import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/5HoshuuMal/camel.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/5HoshuuMal/cattle.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/5HoshuuMal/goat.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/5HoshuuMal/horse.dart';

class FiveLiveStock extends StatefulWidget {
  const FiveLiveStock({super.key});

  @override
  State<FiveLiveStock> createState() => _FiveLiveStockState();
}

class _FiveLiveStockState extends State<FiveLiveStock> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Five livestock',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 28,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                  '"5 Hoshuu mal" (5 хошуу мал) is a Mongolian term that translates to "five livestock." It refers to the five primary types of domesticated animals traditionally raised by Mongolian nomads. These livestock are central to their way of life, providing essential resources for sustenance, transportation, and trade. The "five livestock" consist of the following: Horses: Horses are the most iconic animals in Mongolian culture and history. They are valued for their speed, endurance, and versatility. Mongolian nomads use horses for transportation, herding, hunting, and participating in traditional sports and festivals like horse racing and archery.'),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Horse(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/fivelivestockhorse.jpg'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Horse',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          width: size.width * 0.45,
                          height: size.height * 0.2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cattle(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/FLcattle.jpg'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Cattle',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          width: size.width * 0.45,
                          height: size.height * 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/FLsheep.jpg'),
                                    fit: BoxFit.cover)),
                            child: Text(
                              'Sheep',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            width: size.width * 0.45,
                            height: size.height * 0.25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Goat(),
                                )),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/FLgoat.jpg'),
                                      fit: BoxFit.cover)),
                              child: Text(
                                'Goat',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              width: size.width * 0.45,
                              height: size.height * 0.2,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Camel(),
                            )),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/FLcamel.jpg'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Camel',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          width: size.width * 0.45,
                          height: size.height * 0.46,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
