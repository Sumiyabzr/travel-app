import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/bloc/bloc.dart';
import 'package:visitulaanbaatar/bloc/events.dart';
import 'package:visitulaanbaatar/bloc/states.dart';
import 'package:visitulaanbaatar/components/new_home_card.dart';
import 'package:visitulaanbaatar/screens/Profile/profile.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({super.key});

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  final _categoryBloc = CategoryBloc();
  final _productBloc = ProductBloc();
  final _eventCategoryBloc = EventCategoryBloc();
  final _eventProductBloc = EventProductBloc();
  final _commCategoryBloc = CommCategoryBloc();
  final _commProductBloc = CommProductBloc();
  final _culturalCategoryBloc = CulturalCategoryBloc();
  final _culturalProductBloc = CulturalProductBloc();
  bool _loading = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _categoryBloc.add(CategoryGetAll());
    _productBloc.add(ProductGetAll());
    _eventCategoryBloc.add(EventCategoryGetAll());
    _eventProductBloc.add(EventProductGetAll());
    _commCategoryBloc.add(CommCategoryGetAll());
    _commProductBloc.add(CommProductGetAll());
    _culturalCategoryBloc.add(CulturalCategoryGetAll());
    _culturalProductBloc.add(CulturalProductGetAll());
  }

  @override
  Widget build(BuildContext context) {
    List<List> Topics = [
      [
        "Visit UB",
        //  "http://202.179.6.26:8000/asset/testt.png",
        "assets/images/tesst.png",
      ],
      [
        "Destination",
        "assets/images/DestinationIcon.png",
      ],
      [
        "Info",
        "assets/images/InfoIcon.png",
      ],
      [
        "Tours",
        "assets/images/ToursIcon.png",
      ],
      [
        "Commercial",
        "assets/images/CommercialIcon.png",
      ],
      [
        "Events",
        "assets/images/tesst.png",
      ],
      [
        "Accommodation",
        "assets/images/AccommodationIcon.png",
      ],
      [
        "Maps",
        "assets/images/MapsIcon.png",
      ]
    ];
    final size = MediaQuery.of(context).size;
    PageController _controller = PageController();
    PageController _controller_ = PageController();
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductBloc, ProductState>(
          bloc: _productBloc,
          listener: (context, state) {
            if (state is ProductLoading) {
              setState(() {
                _loading = true;
                _error = false;
              });
            }
            if (state is ProductSuccess) {
              setState(() {
                _loading = false;
              });
            }
            if (state is ProductFailure) {
              _loading = false;
              _error = true;
            }
          },
        )
      ],
      child: _loading
          ? Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: SizedBox(
                  child: CircularProgressIndicator(color: Colors.blueAccent),
                ),
              ),
            )
          : Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/newhome.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          width: size.width,
                          height: size.height * 0.40,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  const Color.fromARGB(255, 255, 255, 255),
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.65,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide.none,
                                            ),
                                            hintText: 'Search',
                                            prefixIcon: Icon(Icons.search)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white),
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.shopping_cart_rounded,
                                        color: HexColor('#013B7D'),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Profile(),
                                          )),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.account_circle_outlined,
                                          size: 35,
                                          color: HexColor('#013B7D'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Welcome to land of',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'stories Mongolia!',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.play_circle_fill_outlined,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: List.generate(Topics.length,
                            (index) => NewHomeCard(Topics[index])),
                      ),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: size.height * 0.24,
                          width: size.width,
                          child: PageView.builder(
                              controller: _controller,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      width: size.width,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.center,
                                            colors: [
                                              HexColor('#7FBFF2'),
                                              HexColor('#E3F2FD'),
                                            ]),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'http://202.179.6.26:8000/asset/Ellipse.png'),
                                            alignment: Alignment.topRight),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 24),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Image.network(
                                                      'http://202.179.6.26:8000/asset/ulaanbaatar.png',
                                                      alignment:
                                                          Alignment.topLeft,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Coming soon...',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          width: size.width,
                          height: 190,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: 5,
                              effect: WormEffect(
                                  activeDotColor: Colors.red,
                                  dotColor: Color.fromARGB(255, 109, 109, 109),
                                  dotHeight: 8,
                                  dotWidth: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Accomodation',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_rounded,
                                  color: Colors.black)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://202.179.6.26:8000/asset/Other/homescreen_acc.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.3,
                                  height: size.width * 0.35),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://202.179.6.26:8000/asset/Other/asaland_home.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.3,
                                  height: size.width * 0.35),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://202.179.6.26:8000/asset/Other/maihan_tolgoi_acc.jpg'),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.3,
                                  height: size.width * 0.35),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Chuluutiin Khavtsal',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Asa Land',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.3,
                                    child: Text(
                                      'Maikhan tolgoi',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'http://202.179.6.26:8000/asset/yy.png'),
                                        alignment: Alignment.centerRight,
                                        fit: BoxFit.contain),
                                    color: Colors.black),
                                width: size.width,
                                height: size.height * 0.1,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Энд сурталчлаарай ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        'Сурталчилгаагаа өнөөдрөөс эхлүүл',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top destinations',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: size.width * 0.45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.symmetric(horizontal: 15),
                            child: InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/0a29/12e1/680f6101657d4f2f88b990a093f19c22?Expires=1703462400&Signature=g4RQ2xPK5HhDufL7wfzr5JI1Im9SZdBzEcG39wToXX2hHc2z~FbHIXdBTkGmhGm5KuiJIboXR05U-ui2OYxne~JmMlSok7QvcMmFEUDB5XI7PvEWkJSOmHhBvs6QNy8zx2WLmH6DpTxtk1K6cgmaOs7vFdPoulV7FKT94sKnf2Sr3h1Qyqb8S8x4YP8SVJcR05TII0Ehn0PZlTMKuPsadBMiJB5uUTX~01Kc82lqD80f7TayhI0lVhJ4~OlkII6nKEOBxYRymfBx3-eS2O5v6oqavk3P7PO1zOXI1~YX6vpYsZdvoUp6Vfi0ehYBuuCx42W5u8VIOiOYqm9E9gmUqA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                ),
                                child: Container(
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1,
                                          sigmaY: 5,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Container(
                                            width: size.width * 0.3,
                                            child: Text(
                                              'Genghis Khan Statue Complex',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://202.179.6.26:8000/asset/Other/hongoriin_els_1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                              child: Container(
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1,
                                        sigmaY: 5,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: size.width * 0.3,
                                          child: Text(
                                            'Khongoryn Els',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.symmetric(horizontal: 15),
                            child: InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/078e/0dd3/6181953519cb94e7a60a9ac0bb9bc4db?Expires=1703462400&Signature=TsRCnItwReEPz6hmK1XovTKBKIL9FPW4kBKf7kNnACmdSOpBB3bAfx5NQ715XRq0DwSWLhjmyMNUFxcnkrTWgY70hVZUWxYG-W0HtqcuVy4LWf8V1tlQr630cZNHQ--ayewcjb3P4cj4iBjljt~EmDbMbNtsU~H5pzqb6TfTPWeiBM4kuojDd9Rf0B2qPeWXYel5dSUUKOnfPrM65sc3~8QwuZEF5kvl2RYFndpWCfjyty49UeKotPNbrpdsIAZmgXpjYugfzTITG7wNytNTchDplPDQB1ZkPcxKedrKCgGYGpI1qmwfEiSWX-OEKO3tXT9WdpHVUcgbq6iHMp4cpw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                ),
                                child: Container(
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1,
                                          sigmaY: 5,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Container(
                                            width: size.width * 0.3,
                                            child: Text(
                                              'Ulaan tsutgalan',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: size.height * 0.6,
                          width: size.width,
                          child: PageView.builder(
                              controller: _controller_,
                              itemCount: 5,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://mgl.gogo.mn/newsn/images/ck/2019/09/11/03-110356-980316201.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.58,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _controller_,
                              count: 5,
                              effect: ScrollingDotsEffect(
                                  activeDotScale: 1,
                                  activeStrokeWidth: 1,
                                  fixedCenter: true,
                                  activeDotColor: Colors.red,
                                  dotColor: Color.fromARGB(255, 109, 109, 109),
                                  dotHeight: 8,
                                  dotWidth: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

                                // child: Padding(
                                //   padding: EdgeInsets.all(8),
                                //   child: Text(
                                //     'Genghis Khan Statue Complex',
                                //     textAlign: TextAlign.center,
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         fontWeight: FontWeight.bold,
                                //         color: Colors.white),
                                //   ),
                                // ),
                          