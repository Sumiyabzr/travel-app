import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Profile/profile.dart';
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
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 30,
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Travel Destinations",
              style: TextStyle(fontSize: 16),
            ),
            titleSpacing: 10,
            // centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ));
                        },
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
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Material(
                  child: Container(
                    height: 55,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: TabBar(
                      physics: const ClampingScrollPhysics(),
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade700),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 35,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    child: Icon(Icons.location_on),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text('Destinations'),
                                  ),
                                ]),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 35,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    child: Icon(Icons.home),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text('Accommodation'),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                      Center(child: Destinations()),
                      Center(
                        child: Accommodation(),
                      ),
                    ]))
              ],
            ),
          ),
        );

        // DefaultTabController(
        //     length: 2,
        //     child: Scaffold(
        //       backgroundColor: Colors.white,
        //       appBar: AppBar(
        //         leading: Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 5),
        //           child: IconButton(
        //             onPressed: () => Navigator.pop(context),
        //             icon: Icon(Icons.arrow_back_ios),
        //             color: Colors.black,
        //             iconSize: 28,
        //           ),
        //         ),
        //         leadingWidth: 30,
        //         elevation: 0,
        //         backgroundColor: Colors.white,
        //         centerTitle: true,
        //         title: Text(
        //           "Travel Destinations",
        //           style: TextStyle(fontSize: 16),
        //         ),
        //         titleSpacing: 10,
        //         // centerTitle: true,
        //         titleTextStyle: TextStyle(
        //             color: Colors.black,
        //             fontSize: 35,
        //             fontWeight: FontWeight.w700),
        //         actions: [
        //           Padding(
        //             padding: EdgeInsets.symmetric(horizontal: 15),
        //             child: Row(
        //               children: [
        //                 SizedBox(
        //                   width: 28,
        //                   child: IconButton(
        //                       onPressed: () {},
        //                       icon: Icon(
        //                         Icons.search,
        //                         color: Colors.black,
        //                         size: 28,
        //                       )),
        //                 ),
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 SizedBox(
        //                   width: 28,
        //                   child: IconButton(
        //                     onPressed: () {},
        //                     icon: Icon(
        //                       Icons.account_circle,
        //                       color: Colors.black,
        //                       size: 28,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //       body: Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 0),
        //         child: Column(
        //           children: [
        //             const TabBar(
        //                 labelStyle: TextStyle(fontSize: 16),
        //                 labelColor: Colors.black,
        //                 indicatorColor: Colors.black,
        //                 indicatorWeight: 2.0,
        //                 tabs: [
        //                   Tab(
        //                     text: "Destinations",
        //                   ),
        //                   Tab(
        //                     text: "Accommodation",
        //                   )
        //                 ]),
        //             Expanded(
        //               child: TabBarView(
        //                   physics: NeverScrollableScrollPhysics(),
        //                   children: [
        //                     Container(
        //                       child: Destinations(),
        //                     ),
        //                     Container(child: Accommodation()),
        //                   ]),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ));
      },
    );
  }
}
