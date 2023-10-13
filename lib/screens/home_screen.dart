import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visitulaanbaatar/bloc/events.dart';
import 'package:visitulaanbaatar/bloc/states.dart';
import 'package:visitulaanbaatar/components/HomeCard.dart';

import '../bloc/bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _categoryBloc = CategoryBloc();
  final _productBloc = ProductBloc();
  final _eventCategoryBloc = EventCategoryBloc();
  final _eventProductBloc = EventProductBloc();
  bool _loading = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _categoryBloc.add(CategoryGetAll());
    _productBloc.add(ProductGetAll());
    _eventCategoryBloc.add(EventCategoryGetAll());
    _eventProductBloc.add(EventProductGetAll());
  }

  @override
  Widget build(BuildContext context) {
    List<List> Topics = [
      ["Travel Destinations", "assets/images/TravelDestination.jpg"],
      [
        "Events",
        "assets/images/event.jpg",
      ],
      [
        "Commercial",
        "assets/images/commercial.jpg",
      ],
      [
        "Info",
        "assets/images/info.jpg",
      ],
      [
        "Tours",
        "assets/images/tours.jpg",
      ]
    ];

    final size = MediaQuery.of(context).size;
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
              backgroundColor: Color(0xff212121),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                            image: AssetImage("assets/images/Welcome.jpg")),
                      ),
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
                              Colors.black.withOpacity(0.01)
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome to Mongolia!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "The peoples of Mongolia have a long history under a number of nomadic empires dating back to the period of the Xiongnu in the 4th century B.C. The name Mongol goes back to at least the 11th century A.D.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xff2b2b2b)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Topics",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              GestureDetector(
                                child: Text(
                                  "See more",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: List.generate(
                            Topics.length, (index) => HomeCard(Topics[index])),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )),
    );
  }
}
