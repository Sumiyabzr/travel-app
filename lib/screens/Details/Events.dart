import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  PageController _controller = PageController();
  PageController _controller_ = PageController();
  PageController _controller__ = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: size.height * 0.28,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                        image: NetworkImage("http://192.168.0.103:7000/asset/" +
                            provider.eventProducts[provider.categoryIndex]
                                [provider.productIndex]['thumb']))),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey,
                      Colors.grey.withOpacity(0.5),
                      Colors.grey.withOpacity(0.1)
                    ],
                  )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.play_circle),
                            iconSize: 64,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        provider.eventProducts[provider.categoryIndex]
                            [provider.productIndex]['name'],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "/" +
                            provider.eventProducts[provider.categoryIndex]
                                [provider.productIndex]['productType'] +
                            "/",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Text(
                        provider.eventProducts[provider.categoryIndex]
                            [provider.productIndex]['description'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          wordSpacing: 2,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              /////////////// image 1 //////////////
              Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: size.width,
                    child: PageView.builder(
                        controller: _controller,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: provider
                            .eventProducts[provider.categoryIndex]
                                [provider.productIndex]['images']
                            .length,
                        itemBuilder: (context, index) => Container(
                              width: size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "http://192.168.0.103:7000/asset/" +
                                              provider.eventProducts[provider
                                                          .categoryIndex]
                                                      [provider.productIndex]
                                                  ['images'][index]),
                                      fit: BoxFit.cover)),
                            )),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 335,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 6,
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
                height: 5,
              ),
              ////////////////// image 2 /////////////////
              Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: size.width,
                    child: PageView.builder(
                        controller: _controller_,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: provider
                            .eventProducts[provider.categoryIndex]
                                [provider.productIndex]['images1']
                            .length,
                        itemBuilder: (context, index) => Container(
                              width: size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "http://192.168.0.103:7000/asset/" +
                                              provider.eventProducts[provider
                                                          .categoryIndex]
                                                      [provider.productIndex]
                                                  ['images1'][index]),
                                      fit: BoxFit.cover)),
                            )),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 335,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller_,
                        count: provider
                            .eventProducts[provider.categoryIndex]
                                [provider.productIndex]['images2']
                            .length,
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
              SizedBox(height: 5),
              ////////////////////// image 3 //////////////////
              Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: size.width,
                    child: PageView.builder(
                        controller: _controller__,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: 5,
                        itemBuilder: (context, index) => Container(
                              width: size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "http://192.168.0.103:7000/asset/" +
                                              provider.eventProducts[provider
                                                          .categoryIndex]
                                                      [provider.productIndex]
                                                  ['images2'][index]),
                                      fit: BoxFit.cover)),
                            )),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 335,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller__,
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
              SizedBox(height: 15)
            ],
          ),
        ),
      );
    });
  }
}
