import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/5HoshuuMal/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Ger/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Hool/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Sport/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/NomadicLifeStyle/Urlag/home_screen.dart';

class NomadicScreen extends StatefulWidget {
  const NomadicScreen({super.key});

  @override
  State<NomadicScreen> createState() => _NomadicScreenState();
}

class _NomadicScreenState extends State<NomadicScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'http://202.179.6.26:8000/asset/NLS.jpg',
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nomadic Life Style',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: ReadMoreText(
                            'In modern Mongolia, despite the increasing urbanization and development, a significant portion of the population still embraces a nomadic lifestyle. The modern nomadic lifestyle in Mongolia is an intriguing blend of traditional practices and contemporary adaptations, showcasing the resilience of nomadic culture in the face of changing times.Nomadic herders, known as "herders," continue to move with their livestock, seeking suitable pastureland and water sources. While the traditional ger (yurt) remains a central feature of their lifestyle, some herders have incorporated modern elements into their mobile dwellings, such as solar panels to generate electricity and satellite dishes for communication and entertainment. This integration of technology allows herders to stay connected to the outside world even while on the move.Mobile phones have become an essential tool for modern nomads, providing them with a means of communication and access to vital weather forecasts, market information, and emergency services. It has significantly improved communication between herders and their families, enabling them to coordinate movements or call for assistance when needed.Moreover, modern transportation, such as motorcycles and four-wheel-drive vehicles, has facilitated the movement of herders and their livestock over longer distances. These vehicles have proven to be valuable assets in emergencies and during extreme weather conditions, making their traditional nomadic lifestyle more manageable.Education and healthcare services have also reached many nomadic communities, thanks to efforts by the Mongolian government and non-governmental organizations. Mobile schools and health clinics have been established to provide educational and medical support to herders, especially during the colder winter months when they may stay closer to permanent settlements.While some herders have chosen to settle permanently in rural towns or urban centers, others maintain a semi-nomadic lifestyle, alternating between the city and the countryside throughout the year. This lifestyle allows them to take advantage of the educational and healthcare opportunities in urban areas while preserving their nomadic heritage and maintaining their connection with nature and livestock.The modern nomadic lifestyle also involves interactions with the market economy. Herders engage in livestock breeding and dairy production, selling products like meat, wool, and dairy to local and international markets. These economic activities have enabled them to participate in the cash economy while continuing to live a mobile lifestyle.Despite the challenges posed by climate change, urbanization, and the sedentarization policies of the past, many Mongolian herders continue to cherish and uphold their nomadic way of life. It represents not only a source of livelihood but also a deep connection to their cultural heritage and ancestral traditions.',
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FiveLiveStock())),
                        child: Container(
                            width: size.width,
                            height: size.height * 0.13,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/5hoshuu.jpg'),
                                    fit: BoxFit.cover)),
                            clipBehavior: Clip.antiAlias,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Five livestock',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: size.width * 0.48,
                                height: size.height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'http://202.179.6.26:8000/asset/bagaj.jpg'),
                                        fit: BoxFit.cover)),
                                clipBehavior: Clip.antiAlias,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Tools',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Food(),
                                    )),
                                child: Container(
                                  width: size.width * 0.48,
                                  height: size.height * 0.22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://202.179.6.26:8000/asset/hool.jpg'),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.cover)),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      'Food',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: size.width * 0.48,
                                  height: size.height * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://202.179.6.26:8000/asset/huwtsas.jpg'),
                                          fit: BoxFit.cover)),
                                  clipBehavior: Clip.antiAlias,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      'Clothes',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Art(),
                                )),
                            child: Container(
                              width: size.width * 0.43,
                              height: size.height * 0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/urlag.jpg'),
                                      fit: BoxFit.cover)),
                              clipBehavior: Clip.antiAlias,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Art',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ger(),
                              )),
                          child: Container(
                              width: size.width * 0.48,
                              height: size.height * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/ger.jpg'),
                                      fit: BoxFit.cover)),
                              clipBehavior: Clip.antiAlias,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Ger',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sport(),
                              )),
                          child: Container(
                              width: size.width * 0.43,
                              height: size.height * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://202.179.6.26:8000/asset/sport.jpg'),
                                      fit: BoxFit.cover)),
                              clipBehavior: Clip.antiAlias,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Sport',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )),
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/tsag.jpg'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover)),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Цаг тоолол',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/material.jpg'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover)),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Materials',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
