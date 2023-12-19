import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Sport/Anklebone/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Sport/Archery/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Sport/HorseRacing/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Sport/Wrestling/home_screen.dart';

class Sport extends StatefulWidget {
  const Sport({super.key});

  @override
  State<Sport> createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sport',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://202.179.6.26:8000/asset/mori.jpg'),
                        fit: BoxFit.cover)),
                width: size.width,
                height: size.height * 0.3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                child: Text(
                    'Mongolian sports have deep historical roots and are closely tied to the nomadic lifestyle and warrior traditions of the Mongolian people. Many of these sports originated centuries ago and were developed as essential skills for survival, training for warfare, and as forms of entertainment.'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wrestling(),
                            )),
                        child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/boh.jpg'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Wrestling',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          width: size.width * 0.45,
                          height: size.height * 0.35,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Archery(),
                            )),
                        child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/harwaa.jpg'),
                                  fit: BoxFit.cover)),
                          child: Text(
                            'Archery',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          width: size.width * 0.45,
                          height: size.height * 0.35,
                        ),
                      )
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
                              builder: (context) => HorseRacing(),
                            )),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/hurdanmori.jpg'),
                                      fit: BoxFit.cover)),
                              child: Text(
                                'Horse racing',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: size.width * 0.45,
                              height: size.height * 0.35,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Anklebone(),
                                )),
                            child: Container(
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/shagai.jpg'),
                                      fit: BoxFit.cover)),
                              child: Text(
                                'Anklebone archery',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: size.width * 0.45,
                              height: size.height * 0.17,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/sport.jpg'),
                                    fit: BoxFit.cover)),
                            child: Text(
                              'Horseback archery',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            width: size.width * 0.45,
                            height: size.height * 0.17,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
