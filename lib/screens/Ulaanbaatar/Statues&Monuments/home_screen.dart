import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StatuesMonuments extends StatefulWidget {
  const StatuesMonuments({super.key});

  @override
  State<StatuesMonuments> createState() => _StatuesMonumentsState();
}

class _StatuesMonumentsState extends State<StatuesMonuments> {
  List data = [
    [
      "Buddha statue",
      "On the bottom of the Zaisan hill, there is a huge statue of Buddha which has a beautiful garden  with many unique flowers. In this environment you can find many kind of street food, malls, shops and nightclubs.",
      "http://202.179.6.26:8000/asset/BogdKhaanMuseum (1 of 1).jpg",
      "http://202.179.6.26:8000/asset/BogdKhaanMuseum (1 of 12).jpg",
      "http://202.179.6.26:8000/asset/BogdKhaanMuseum (2 of 12).jpg",
      "http://202.179.6.26:8000/asset/BogdKhaanMuseum (3 of 12).jpg"
    ],
    [
      "Beatles statue",
      "Right in front of the State department store there is a square called Fountain. Center of that square is the Beatles statue. Also this area is considered a street of youth. Because this place is where students, couples and young people hang out mostly. ",
      "http://202.179.6.26:8000/asset/Chojin (1 of 2).jpg",
      "http://202.179.6.26:8000/asset/Chojin (2 of 2).jpg",
      "http://202.179.6.26:8000/asset/ChoijinLama (9 of 11).jpg",
      "http://202.179.6.26:8000/asset/ChoijinLama (5 of 11).jpg",
    ],
    [
      "Statue of Renchin",
      "He was a researcher of Mongolian language, scholar and writer. Also he is an author of the screenplay of `Tsogt taij` which is Mongolian first historical feature film. The statue is located right in front of the National library of Mongolia. He is considered to be the creater of Mongolian modern literature.",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    ],
    [
      "Statue of Zorig",
      "Sanjaasuren Zorig was one of the leaders of 1990's democratic revolution. Zorig means brave or will in Mongolia. As his meaning of name, he was critic, who speaks for civilians bravely also willingly against of communist government. Later he became a victim of political murder. It was a massive loss for modern Mongolian democracy.",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    ],
    [
      "Zaisan",
      "Zaisan memorial is located on top of the hill at the southern part of Mongolian capital. In 1956 It was built to honor the Mongolian and Soviet soldiers who died in world war ll. It shows you the journey of the friendship between Mongolian and Russian people. From the top, You can have a panoramic view of the capital city.",
      "http://202.179.6.26:8000/asset/Zaisan (2 of 3).jpg",
      "http://202.179.6.26:8000/asset/Zaisan (3 of 3).jpg",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    ],
    // [
    //   "Narantuul black market",
    //   "Biggest and cheapest market in the capital city. Where average people go there to buy clothes, tools and food.Also many businesses provide their supplies from here. Beware of pickpocket.",
    //   "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    //   "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    //   "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    //   "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    // ]
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Statues & Monuments',
          style: TextStyle(color: Colors.black, fontSize: 16),
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
          children: List.generate(
            data.length,
            (index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              size: 30,
                              color: HexColor('#7FBFF2'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              data[index][0],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Text(
                          data[index][1],
                          textAlign: TextAlign.justify,
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
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(data[index][2]),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(data[index][3]),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(data[index][4]),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(data[index][5]),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
