import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/day.dart';

class CityTour extends StatefulWidget {
  const CityTour({super.key});

  @override
  State<CityTour> createState() => _CityTourState();
}

class _CityTourState extends State<CityTour> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: NetworkImage(
                          'http://192.168.0.103:7000/asset/CityTour.jpg'))),
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
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 25,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: size.width,
                        height: size.height * 0.22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'City Tour',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'If you want to explore Ulaanbaatar on your own, but need some recommendations, look no further. The virtual Tour Guide Anar from BraveNewMongoliaTours.com is here to guide you through the most optimal itinerary to experience our Capital City, showing you the best Museums, Restaurants, Shopping destinations, and Iconic Tourist attractions outside of the City.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_context) => DayScreen())),
                      child: Container(
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/3f7d/168b/1a0213baabd280270374da399d1f8602?Expires=1698019200&Signature=I~YKdAdsoypD7~DxjiQm0QPP1RYvleWM-HXSgGcUp8L3edwbIM6~aQk6aiKIH57zrZG1hDg2BkuHvG9APUw9zVXBuUEEMvyxMgmOCpxLT-pP4BlioBXoRcdTJareoAPWh50LH8vXynIGQa6pnRhyhwmhTRLBy5uPXuND1bhu~QY18u4paEETmGRIlaIB1wXDycxiyEHSOnRxsdBdJTMtKXfFWqDBG4NgaHfje7Zh450~9X1ql52mZKlp508DtMVROLCBjDB6F~vBBaf5sPWcZPY8Lsjp6PDeSdvkZ2r1P12THcS7xYmiaFWDIAX-FOxrm1z-GYxnRSixZU~PVqJdsw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high)),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                Colors.black54,
                                Colors.black.withOpacity(0.65),
                              ])),
                          child: Center(
                            child: Text(
                              'Day 1',
                              style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/97fe/6abc/32f3fcf2e3d7572585ca38989122bf2e?Expires=1698019200&Signature=MjQp3HmMnuoNVmqRdkJD0I9mJmigc4P3Alo0k-hdZmOKNV0Jn25UR7ocik3nFAhDIl0inbQFo65ykAdIGHC0o4zUO0AsjJaQjkk9vtSJvv3J66xGqWLLTIrmMo-3WneT0~Jr4GHjH7OB2yqpZJwNr3CL2-k1oxU66-IwS5drPCv29ntDOMHNwXJJePniMTSRJhlZDheGJoGrdyahTaOmCvcQCYmkkxcma9Z62vZoVg23~BiEimK27PbWDM7htE5AgmijVxs2Ta9DjRGvfE0bmS1BB8Blz0n-c7fKmL0XjwbxqMLkQbxMmBE2xBsVNy1aHSzJEqWDihKLlqeyEAMrlQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high)),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                Colors.black54,
                                Colors.black.withOpacity(0.65),
                              ])),
                          child: Center(
                            child: Text(
                              'Day 2',
                              style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/de2d/dd92/9ea75f93b039f8f6e64a77676e4310c9?Expires=1698019200&Signature=ZD~5DILs-SGW19SDT8y2~hdnjW63Yx6xU8wy3y2rjWiATi90wdiDrESQZ2E3TgZ4uG5htqvZLUEbzdLVTPPxNk~NGMBwxDMGvkk-fm5RjBDG~DDsyoKsAnRXgU-DmBifC424i965pasiK0HbD10ehtnxuZv~4ZrYSQ-g8vV8st7dN916NdmEfvlc-ig9WF0egZDe3cAuIPder31Q4r7qG7K7Uuphx3cfhiw33o89~MtqtU5DMagijw7pq-0vW~jdorGJ8ZJQtmGchCfQBea3uh9URScDvz86xVkbLWO-jbxRxTFN1sDjiTdirvGp0-833GJOHsOy2t-qJ1mixQDlcw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high)),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                Colors.black54,
                                Colors.black.withOpacity(0.65),
                              ])),
                          child: Center(
                            child: Text(
                              'Day 3',
                              style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Stack(alignment: Alignment.centerLeft, children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: size.width,
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://s3-alpha-sig.figma.com/img/d6d2/48ee/bff7d67c90eccf012c2914f539d2a7a2?Expires=1698019200&Signature=BiseSg0cDwJtjiHZjmiCNDTEQcxnZGRHR~mFqXiUnzXNK7Ytw93pnMVhH9VWw4E6705~AgnQ~gLZmyrlpbiEukgxlaoYQsAy8G~L6DoouAznjD5~BeMJUBYdEAoYWz3EGloig8u~V33o3izUxRP37-qU5ry-akBFZqE9HLg5xpCeheFyp16BllIuWKiEs-WdHOomN8dTC8CAEJVvV149Qj1ACgKiojyUiunpsYxxqrAI6i3piGnHmFHxft1SZCDry86YOxgxv4MDjnAyXVAg1v~POwcXoPDzMjA7ePHROzkNku0ERB~cnNiBkr4-WuhOeNSNuzAJxtxSGUOEvKVQBg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high)),
                ),
              ),
              Align(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle),
                  iconSize: 64,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
            ]),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle_outline_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Brave New Mongolia',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        '+(976) 8625-6868',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'www.BraveNewMongoliaTours.com',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
