import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Embassies extends StatefulWidget {
  const Embassies({super.key});

  @override
  State<Embassies> createState() => _EmbassiesState();
}

class _EmbassiesState extends State<Embassies> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                      'https://s3-alpha-sig.figma.com/img/3602/0628/39a4a7f3c03f4a5f7d6f6f4560c9e82f?Expires=1699833600&Signature=k8fFkFFoUGlmjxvEU77MFHI3CVpxo-bEXvYAAPTF-pEYGwzv0SaED9c~SShNpY9ZxUrWWrhq3ekGkH-qrTK6djm-jysOp1v0vlW3f~RyhkBSgh2efzsBzd7tD-EzMqgaBfxMq9EwvbS4ObDNrnf6eVnqnGBwDHLCb1k4uAAZm4jaJn~J5zpjZO4n4uy5qd6gwIY8Wj8Ig5lRjbISOi1kKApUMxFRUYU47ZFgrufDI9bXBQPLEkbGEDPgO6RPHj7B4QMlAgFuFfBJGuAxo~z1HPrYNn0s-N0wbd1wAPCgjxHhyz5xuRqoGjwc08OHGrprF-CM0VOGL-ohaLid8Fxj5Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                      fit: BoxFit.cover),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Embassies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => CustomDialogWidget(),
                            );
                          },
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/united states.png'),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the United States of America',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomDialogWidget(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/russia.png'),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the Russian Federation',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomDialogWidget(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/china.png'),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of  Chine',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/japan.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of Japan',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/south korea.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of the Korea',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/germany.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of the Federal Republic of Germany',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/turkey.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of the Republic of Turkey',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/france.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of the French Republic',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/united kingdom.png'),
                              width: 48,
                              height: 48,
                            ),
                            Text(
                              'Embassy of the United Kingdom',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.2,
                    height: size.height * 0.17,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/india.png'),
                          width: 48,
                          height: 48,
                        ),
                        Text(
                          'Embassy of the People`s Republic of India',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDialogWidget extends StatefulWidget {
  const CustomDialogWidget({super.key});

  @override
  State<CustomDialogWidget> createState() => _CustomDialogWidgetState();
}

class _CustomDialogWidgetState extends State<CustomDialogWidget> {
  List data = [
    [
      [
        "http://202.179.6.26:8000/asset/united states.png",
        "Embassy of the United States of America",
        "+976 7007-6001",
        "Denver Street #3, 11th Micro-District, Ulaanbaatar 14190, Mongolia"
      ],
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          width: size.width,
          height: size.height * 0.25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: List.generate(
              data.length,
              (index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: NetworkImage(
                        data[index][0][0],
                      ),
                      width: 42,
                      height: 42,
                    ),
                    // Image.network(
                    //     'http://202.179.6.26:8000/asset/united states.png',
                    //     width: 42,
                    //     height: 42,
                    //     ),
                    Text(
                      data[index][0][1],
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone),
                        Text(data[index][0][2]),
                        SizedBox(
                          width: size.width * 0.3,
                        ),
                        Icon(Icons.copy)
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on),
                        Expanded(
                          child: Text(data[index][0][3]),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
