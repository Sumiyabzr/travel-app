import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:provider/provider.dart';
// import 'package:visitulaanbaatar/provider/common.dart';
// import 'package:visitulaanbaatar/screens/SeeAll/SeeAllCommPage.dart';
// import 'package:visitulaanbaatar/screens/Travel_Destinations/Accommodation.dart';
// import 'package:visitulaanbaatar/screens/Travel_Destinations/Destinations.dart';

class SeeAllComm extends StatefulWidget {
  SeeAllComm({super.key});

  @override
  State<SeeAllComm> createState() => _SeeAllCommState();
}

class _SeeAllCommState extends State<SeeAllComm> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: HexColor('#5A9BF8')),
            tabs: [
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.location_city_rounded,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.fastfood_rounded,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.shopify_sharp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.mode_night_outlined,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.card_travel_rounded,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.health_and_safety_rounded,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Tab(
                  child: Container(
                    child: Icon(
                      Icons.run_circle_outlined,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
          ],
        ),
      ),
    );
    // Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: Colors.white,
    //     centerTitle: true,
    //     title: Text(
    //       'TEXT',
    //       style: TextStyle(color: Colors.black),
    //     ),
    //     leading: IconButton(
    //       onPressed: () => Navigator.pop(context),
    //       icon: Icon(
    //         Icons.arrow_back_ios_new_rounded,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    //   body: DefaultTabController(
    //     length: 7,
    //     child: Column(
    //       children: [
    //         Material(
    //           child: Container(
    //             height: 55,
    //             color: Color.fromARGB(255, 255, 255, 255),
    //             child: TabBar(
    //               isScrollable: true,
    //               physics: const ClampingScrollPhysics(),
    //               padding: EdgeInsets.only(top: 10, bottom: 10),
    //               unselectedLabelColor: Colors.grey,
    //               indicatorSize: TabBarIndicatorSize.label,
    //               indicator: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(30),
    //                   color: HexColor('#5A9BF8')),
    //               tabs: [
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.location_city_rounded,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.fastfood_rounded,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.shopify_sharp,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.mode_night_outlined,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.card_travel_rounded,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.health_and_safety_rounded,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsetsDirectional.all(5),
    //                   child: Tab(
    //                     icon: Icon(
    //                       Icons.run_circle_outlined,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         // Expanded(
    //         //   child: TabBarView(
    //         //     physics: NeverScrollableScrollPhysics(),
    //         //     children: [
    //         //       Center(child: Destinations()),
    //         //       Center(
    //         //         child: Accommodation(),
    //         //       ),
    //         //     ],
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Consumer<CommonProvider>(
    //   builder: (context, provider, child) {
    //     return DefaultTabController(
    //       length: 1,
    //       child: Scaffold(
    //           backgroundColor: Colors.white,
    //           appBar: AppBar(
    //             actions: [
    //               Padding(
    //                 padding: EdgeInsets.symmetric(horizontal: 5),
    //                 child: IconButton(
    //                   onPressed: () {},
    //                   icon: Icon(Icons.search),
    //                   color: Colors.black,
    //                   iconSize: 28,
    //                 ),
    //               ),
    //             ],
    //             backgroundColor: Color.fromARGB(255, 255, 255, 255),
    //             elevation: 0,
    //             leading: IconButton(
    //                 onPressed: () => Navigator.pop(context),
    //                 icon: Icon(
    //                   Icons.arrow_back_ios,
    //                   color: Colors.black,
    //                   size: 28,
    //                 )),
    //             // leadingWidth: 30,
    //           ),
    //           body: Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 15),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   provider.commCategory[provider.categoryIndex]['name'],
    //                   style: TextStyle(
    //                     fontSize: 35,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 10,
    //                 ),
    //                 Expanded(
    //                   child: TabBarView(
    //                       physics: NeverScrollableScrollPhysics(),
    //                       children: [
    //                         Container(
    //                           child: SeeAllCommPage(),
    //                         ),
    //                       ]),
    //                 ),
    //               ],
    //             ),
    //           )),
    //     );
    //   },
    // );
  }

  HomeTopTabs() {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBar(
          isScrollable: true,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.only(top: 2, bottom: 10),
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: HexColor('#5A9BF8')),
          tabs: <Widget>[
            Tab(
              child: Text(
                '   4+ star   ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                '   3 star   ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                '   Guesthouse   ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                '   Serviced Apartments   ',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
