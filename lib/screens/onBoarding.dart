import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  PageController _controller = PageController();
  bool isLastPage = false;
  bool isSecondPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          physics: ClampingScrollPhysics(),
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
              isSecondPage = index != 0;
            });
          },
          children: [
            _page(
                "http://192.168.0.103:7000/asset/home2.jpg",
                "Welcome to Mongolia",
                "Save your data, watch offline on a plane, train, or submarine..."),
            _page(
                "http://192.168.0.103:7000/asset/home3.jpg",
                "Welcome to Mongolia",
                "Save your data, watch offline on a plane, train, or submarine..."),
            _page(
                "http://192.168.0.103:7000/asset/home4.jpg",
                "Welcome to Mongolia",
                "Save your data, watch offline on a plane, train, or submarine...")
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: isLastPage
                    ? Container(
                        height: 55,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/');
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                      )
                    : Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            isSecondPage
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        elevation: 0),
                                    onPressed: () {
                                      _controller.previousPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeInOut);
                                    },
                                    child: const Text(
                                      "Back",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ))
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        elevation: 0),
                                    onPressed: () {
                                      _controller.animateToPage(2,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeInOut);
                                    },
                                    child: const Text(
                                      "Skip",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )),
                            Center(
                              child: SmoothPageIndicator(
                                controller: _controller,
                                count: 3,
                                effect: SwapEffect(
                                    activeDotColor: Colors.red,
                                    dotColor: Colors.black.withOpacity(0.3)),
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 0),
                                onPressed: () {
                                  _controller.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut);
                                },
                                child: const Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      )),
          ],
        )
      ]),
    );
  }

  Widget _page(String imgUrl, String title, String descreption) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.005), BlendMode.darken),
              image: NetworkImage(imgUrl))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.black.withOpacity(0.005)]),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      descreption,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
