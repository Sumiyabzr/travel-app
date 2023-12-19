import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Details/ACCOMMODATION/overview.dart';
import 'package:visitulaanbaatar/screens/Details/ACCOMMODATION/reviews.dart';
import 'package:visitulaanbaatar/screens/Details/ACCOMMODATION/services.dart';
import 'package:visitulaanbaatar/screens/Details/COMMERCIAL/menu.dart';
import 'package:visitulaanbaatar/screens/Details/COMMERCIAL/overview.dart';
import 'package:visitulaanbaatar/screens/Details/COMMERCIAL/reviews.dart';
import 'package:visitulaanbaatar/screens/Details/COMMERCIAL/services.dart';

class AccDetail extends StatefulWidget {
  final String data;
  const AccDetail(this.data, {super.key});

  @override
  State<AccDetail> createState() => _AccDetailState();
}

class _AccDetailState extends State<AccDetail> {
  @override
  Widget build(BuildContext context) {
    PageController _controller_ = PageController();
    final size = MediaQuery.of(context).size;
    return widget.data == "commProduct"
        ? Scaffold(
            body: Consumer<CommonProvider>(
              builder: (context, provider, child) {
                return DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      /////////////////////////////////////////////////////////////////////
                      Stack(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: size.width * 0.7,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                  itemCount: provider
                                      .getProducts(widget.data)![
                                          provider.categoryIndex]
                                          [provider.productIndex]['Image']
                                      .length,
                                  controller: _controller_,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      child: Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15)),
                                        ),
                                        child: Image.network(
                                          "http://202.179.6.26:8000/asset/" +
                                              provider.getProducts(
                                                              widget.data)![
                                                          provider
                                                              .categoryIndex]
                                                      [provider.productIndex]
                                                  ['Image'][index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SafeArea(
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.67,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SmoothPageIndicator(
                                controller: _controller_,
                                count: provider
                                    .getProducts(widget.data)![
                                        provider.categoryIndex]
                                        [provider.productIndex]['Image']
                                    .length,
                                effect: ScrollingDotsEffect(
                                    activeDotScale: 1,
                                    activeStrokeWidth: 1,
                                    fixedCenter: true,
                                    activeDotColor: Colors.red,
                                    dotColor: Colors.grey,
                                    dotHeight: 10,
                                    dotWidth: 10),
                              ),
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   width: size.width,
                      //   height: size.height * 0.3,
                      //   child: Stack(
                      //     alignment: Alignment.center,
                      //     fit: StackFit.expand,
                      //     children: [
                      //       Image.network(
                      //         "http://202.179.6.26:8000/asset/" +
                      //             provider.getProducts(
                      //                     widget.data)![provider.categoryIndex]
                      //                 [provider.productIndex]['thumb'],
                      //         fit: BoxFit.cover,
                      //       ),
                      //       SafeArea(
                      //         child: Align(
                      //           alignment: Alignment.topLeft,
                      //           child: IconButton(
                      //             onPressed: () => Navigator.pop(context),
                      //             icon: Icon(
                      //               Icons.arrow_back_rounded,
                      //               size: 30,
                      //               color: const Color.fromARGB(255, 0, 0, 0),
                      //             ),
                      //             iconSize: 25,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "http://202.179.6.26:8000/asset/" +
                                                provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex]
                                                        [provider.productIndex]
                                                    ['photo'],
                                          ),
                                          fit: BoxFit.cover)),
                                  width: size.width * 0.23,
                                  height: size.width * 0.23,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      provider.getProducts(widget.data)![
                                              provider.categoryIndex]
                                          [provider.productIndex]['name'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TabBar(
                              labelColor: Colors.black,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      HexColor('#1862FF'),
                                      HexColor('#5A9BF8')
                                    ]),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              tabs: [
                                Tab(
                                  text: 'Overview',
                                ),
                                Tab(
                                  text: 'Services',
                                ),
                                Tab(
                                  text: 'Reviews',
                                ),
                                Tab(
                                  text: 'Menu',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: TabBarView(children: [
                        Center(
                          child: CommOverview("commProduct"),
                        ),
                        Center(
                          child: CommServices(),
                        ),
                        Center(
                          child: CommReviews(),
                        ),
                        Center(
                          child: CommMenu(),
                        )
                      ]))
                      // Padding(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: Text(
                      //               provider.getProducts(widget.data)![
                      //                       provider.categoryIndex]
                      //                   [provider.productIndex]['name'],
                      //               style: TextStyle(
                      //                   fontSize: 20,
                      //                   fontWeight: FontWeight.w700),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 10),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 3),
                      //         child: Row(
                      //           children: [
                      //             Icon(
                      //               Icons.location_pin,
                      //               size: 15,
                      //             ),
                      //             SizedBox(
                      //               width: 5,
                      //             ),
                      //             Text(
                      //               'Ulaanbaatar, Mongolia',
                      //               style: TextStyle(
                      //                 fontSize: 12,
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 3),
                      //         child: Row(
                      //           children: [
                      //             Icon(
                      //               Icons.phone,
                      //               size: 15,
                      //             ),
                      //             SizedBox(
                      //               width: 5,
                      //             ),
                      //             Text(
                      //               provider.getProducts(widget.data)![
                      //                       provider.categoryIndex]
                      //                   [provider.productIndex]['Phonenumber'],
                      //               style: TextStyle(
                      //                 fontSize: 12,
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //       SingleChildScrollView(
                      //         child: Container(
                      //           child: ReadMoreText(
                      //             provider.getProducts(
                      //                     widget.data)![provider.categoryIndex]
                      //                 [provider.productIndex]['description'],
                      //             trimLines: 4,
                      //             textAlign: TextAlign.justify,
                      //             trimMode: TrimMode.Line,
                      //           ),
                      //         ),
                      //       ),
                      //       Column(
                      //         children: [
                      //           Padding(
                      //             padding: EdgeInsets.symmetric(vertical: 10),
                      //             child: Text(
                      //               'Products',
                      //               style: TextStyle(
                      //                   fontSize: 25,
                      //                   fontWeight: FontWeight.w900),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 300,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: PageView.builder(
                      //       itemCount: provider
                      //           .getProducts(widget.data)![
                      //               provider.categoryIndex]
                      //               [provider.productIndex]['Image']
                      //           .length,
                      //       physics: BouncingScrollPhysics(),
                      //       controller: PageController(
                      //         initialPage: 0,
                      //         viewportFraction: 0.7,
                      //       ),
                      //       itemBuilder: (context, index) {
                      //         return Container(
                      //           margin: EdgeInsets.all(8),
                      //           clipBehavior: Clip.antiAlias,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(5),
                      //           ),
                      //           child: FullScreenWidget(
                      //             disposeLevel: DisposeLevel.Medium,
                      //             child: Center(
                      //               child: Hero(
                      //                 tag: "smallImage",
                      //                 child: ClipRRect(
                      //                   borderRadius: BorderRadius.circular(10),
                      //                   child: Image.network(
                      //                     "http://202.179.6.26:8000/asset/" +
                      //                         provider.getProducts(
                      //                                         widget.data)![
                      //                                     provider
                      //                                         .categoryIndex]
                      //                                 [provider.productIndex]
                      //                             ['Image'][index],
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         );
                      //       }),
                      // ),
                    ],
                  ),
                );
              },
            ),
          )
        : widget.data == "accProduct"
            ? Scaffold(
                body: Consumer<CommonProvider>(
                  builder: (context, provider, child) {
                    return DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          //////////////////////////////////////////////////////////////////
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "http://202.179.6.26:8000/asset/" +
                                          provider.getProducts(widget.data)![
                                                          provider
                                                              .categoryIndex]
                                                      [provider.productIndex]
                                                  [provider.subProductIndex]
                                              ['photo'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: size.width,
                                height: size.width * 0.7,
                              ),
                              SafeArea(
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                  ),
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                "http://202.179.6.26:8000/asset/" +
                                                    provider.getProducts(
                                                                widget.data)![
                                                            provider
                                                                .categoryIndex][
                                                        provider
                                                            .productIndex][provider
                                                        .subProductIndex]['thumb'],
                                              ),
                                              fit: BoxFit.cover)),
                                      width: size.width * 0.23,
                                      height: size.width * 0.23,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Text(
                                        provider.getProducts(widget.data)![
                                                    provider.categoryIndex]
                                                [provider.productIndex]
                                            [provider.subProductIndex]['name'],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TabBar(
                                  labelColor: Colors.black,
                                  isScrollable: true,
                                  indicator: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          HexColor('#1862FF'),
                                          HexColor('#5A9BF8')
                                        ]),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  tabs: [
                                    Tab(
                                      text: 'Overview',
                                    ),
                                    Tab(
                                      text: 'Services',
                                    ),
                                    Tab(
                                      text: 'Reviews',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: TabBarView(children: [
                              Center(
                                child: AccOverview("accProduct"),
                              ),
                              Center(
                                child: AccServices(),
                              ),
                              Center(
                                child: AccReviews(),
                              )
                            ]),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            : widget.data == "culturalProduct"
                ? Scaffold(
                    body: Consumer<CommonProvider>(
                      builder: (context, provider, child) {
                        return SingleChildScrollView(
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
                                      "http://202.179.6.26:8000/asset/" +
                                          provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]['photo'],
                                      fit: BoxFit.cover,
                                    ),
                                    SafeArea(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: IconButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            size: 30,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                          ),
                                          iconSize: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 3),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Ulaanbaatar, Mongolia',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SingleChildScrollView(
                                      child: Container(
                                        child: ReadMoreText(
                                          provider.getProducts(widget.data)![
                                                      provider.categoryIndex]
                                                  [provider.productIndex]
                                              ['description'],
                                          trimLines: 4,
                                          textAlign: TextAlign.justify,
                                          trimMode: TrimMode.Line,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                child: PageView.builder(
                                    itemCount: provider
                                        .getProducts(widget.data)![
                                            provider.categoryIndex]
                                            [provider.productIndex]['images']
                                        .length,
                                    physics: BouncingScrollPhysics(),
                                    controller: PageController(
                                      initialPage: 0,
                                      viewportFraction: 0.9,
                                    ),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: FullScreenWidget(
                                          disposeLevel: DisposeLevel.Medium,
                                          child: Center(
                                            child: Hero(
                                              tag: "smallImage",
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                  "http://202.179.6.26:8000/asset/" +
                                                      provider.getProducts(widget
                                                                      .data)![
                                                                  provider
                                                                      .categoryIndex]
                                                              [provider
                                                                  .productIndex]
                                                          ['images'][index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
  }
}
