import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class DesDetail extends StatefulWidget {
  const DesDetail({super.key});

  @override
  State<DesDetail> createState() => _DesDetailState();
}

class _DesDetailState extends State<DesDetail> {
  PageController _controller = PageController();
  PageController _controller_ = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
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
                          "http://192.168.0.103:7000/asset/" +
                              provider.getCategoryProducts(provider
                                      .categoryIndex)[provider.productIndex]
                                  ['thumb'],
                          fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                          ),
                          iconSize: 64,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SafeArea(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Text(
                            provider.getCategoryProducts(provider
                                    .categoryIndex)[provider.productIndex]
                                ['location'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        provider.getCategoryProducts(
                                provider.categoryIndex)[provider.productIndex]
                            ['name'],
                        style: TextStyle(
                            fontSize: 29, fontWeight: FontWeight.w600),
                      ),
                      // SingleChildScrollView(
                      //   child: Container(
                      //     child: ReadMoreText(
                      //       provider.getCategoryProducts(provider.categoryIndex)[provider.productIndex]['description'],
                      //       trimLines: 5,
                      //       textAlign: TextAlign.justify,
                      //       trimMode: TrimMode.Line,
                      //       style: TextStyle(
                      //           fontSize: 15, fontWeight: FontWeight.w400),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),

                Stack(children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 165,
                            child: PageView.builder(
                              controller: _controller,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (content, index) => Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Center(
                                  child: Text(
                                    provider.getCategoryProducts(
                                                provider.categoryIndex)[
                                            provider.productIndex][
                                        "description${index == 0 ? "" : index}"],
                                  ),
                                ),
                                // color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 170,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: ColorTransitionEffect(
                            activeDotColor: Colors.red,
                            dotColor: Color.fromARGB(255, 109, 109, 109),
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                  )
                ]),
                Stack(children: [
                  SizedBox(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                        itemCount: provider
                            .getCategoryProducts(provider.categoryIndex)[
                                provider.productIndex]['images']
                            .length,
                        controller: _controller_,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // color: color[index],
                                // borderRadius: BorderRadius.circular(5),
                                ),
                            child: Image.network(
                              "http://192.168.0.103:7000/asset/" +
                                  provider.getCategoryProducts(provider
                                          .categoryIndex)[provider.productIndex]
                                      ['images'][index],
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 370,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller_,
                        count: provider
                            .getCategoryProducts(provider.categoryIndex)[
                                provider.productIndex]['images']
                            .length,
                        effect: ColorTransitionEffect(
                            activeDotColor: Colors.red,
                            dotColor: Color.fromARGB(255, 109, 109, 109)
                                .withOpacity(0.7),
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                  )
                ])
                // SizedBox(
                //   height: 200,
                //   width: MediaQuery.of(context).size.width,
                //   child: PageView.builder(
                //       itemCount: 4,
                //       controller: PageController(viewportFraction: 1),
                //       itemBuilder: (context, index) {
                //         return Container(
                //           margin: EdgeInsets.symmetric(vertical: 20),
                //           clipBehavior: Clip.antiAlias,
                //           decoration: BoxDecoration(
                //             // color: color[index],
                //             borderRadius: BorderRadius.circular(5),
                //           ),
                //           child: Image.network(
                //             "http://192.168.0.103:7000/asset/" +
                //                 provider.getCategoryProducts(provider.categoryIndex)[provider.productIndex]['photo'],
                //             fit: BoxFit.cover,
                //           ),
                //         );
                //       }),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
