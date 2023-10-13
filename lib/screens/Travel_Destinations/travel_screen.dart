import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/Accommodation.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/Destinations.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                    iconSize: 28,
                  ),
                ),
                leadingWidth: 30,
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text("Travel"),
                titleSpacing: 10,
                // centerTitle: true,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 28,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 28,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    const TabBar(
                        labelStyle: TextStyle(fontSize: 16),
                        labelColor: Colors.black,
                        indicatorColor: Colors.black,
                        indicatorWeight: 2.0,
                        tabs: [
                          Tab(
                            text: "Destinations",
                          ),
                          Tab(
                            text: "Accommodation",
                          )
                        ]),
                    Expanded(
                      child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Container(
                              child: Destinations(),
                            ),
                            Container(child: Accommodation()),
                          ]),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
