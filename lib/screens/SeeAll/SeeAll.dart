import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/SeeAll/SeeAllAccommodation.dart';
import 'package:visitulaanbaatar/screens/SeeAll/SeeAllDestinations.dart';

class SeeAll extends StatefulWidget {
  final int index;
  SeeAll(this.index, {super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return DefaultTabController(
          length: 2,
          initialIndex: widget.index,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.black,
                      iconSize: 28,
                    ),
                  ),
                ],
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 0,
                leading: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 28,
                    )),
                // leadingWidth: 30,
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   provider.products[provider.categoryIndex]
                    //       [provider.productIndex]['name'],
                    //   style: TextStyle(
                    //     fontSize: 35,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
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
                              child: SeeAllDestinations(),
                            ),
                            Container(child: SeeAllAccommodation()),
                          ]),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
