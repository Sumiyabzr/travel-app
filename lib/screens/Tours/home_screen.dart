import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Tours/second_screen.dart';
import 'package:visitulaanbaatar/screens/Tours/test.dart';
import 'package:visitulaanbaatar/screens/Tours/test_image.dart';

class Tours_screen extends StatefulWidget {
  const Tours_screen({super.key});

  @override
  State<Tours_screen> createState() => _Tours_screenState();
}

class _Tours_screenState extends State<Tours_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tour operators',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondTourScreen(),
                    )),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/Juulchin.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.pink),
                  width: size.width,
                  height: size.height * 0.15,
                  child: Text(
                    'Juulchin Tourism',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(4, 7),
                              blurRadius: 3)
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestScreen(),
                    )),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/BNM.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.pink),
                  width: size.width,
                  height: size.height * 0.15,
                  child: Text(
                    'Brave New Mongolia Tours',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(4, 7),
                              blurRadius: 3)
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestImage(),
                    )),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/KhongorExpeditions.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.pink),
                  width: size.width,
                  height: size.height * 0.15,
                  child: Text(
                    'Khongor Expeditions',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(4, 7),
                              blurRadius: 3)
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://202.179.6.26:8000/asset/SelenaTravel.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.pink),
                  width: size.width,
                  height: size.height * 0.15,
                  child: Text(
                    'Selena Travel',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(4, 7),
                              blurRadius: 3)
                        ]),
                  ),
                ),
              ),
            ],
          )
          // Column(
          //   children: [
          //     const SizedBox(height: 20),
          //     GestureDetector(
          //       onTap: () => Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondTourScreen())),
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.18,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image:
          //                 NetworkImage('http://202.179.6.26:8000/asset/BNM.jpg'),
          //           ),
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         clipBehavior: Clip.antiAlias,
          //         child: Align(
          //           alignment: Alignment.center,
          //           child: Text(
          //             'Brave New Mongolia Tours',
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w800),
          //           ),
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 5,
          //     ),
          //     Container(
          //       width: size.width,
          //       height: size.height * 0.18,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://202.179.6.26:8000/asset/DiscoveryMongoliaTours.jpg')),
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       clipBehavior: Clip.antiAlias,
          //       child: Text(
          //         'Discovery Mongolia Tours',
          //         style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w800),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 5,
          //     ),
          //     Container(
          //       width: size.width,
          //       height: size.height * 0.18,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://202.179.6.26:8000/asset/Juulchin.jpg')),
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       clipBehavior: Clip.antiAlias,
          //       child: Text(
          //         'Juulchin',
          //         style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w800),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 5,
          //     ),
          //     Container(
          //       width: size.width,
          //       height: size.height * 0.18,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://202.179.6.26:8000/asset/KhongorExpeditions.jpg')),
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       clipBehavior: Clip.antiAlias,
          //       child: Text(
          //         'Khongor Expeditions',
          //         style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w800),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 5,
          //     ),
          //     Container(
          //       width: size.width,
          //       height: size.height * 0.18,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://202.179.6.26:8000/asset/SelenaTravel.jpg')),
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       clipBehavior: Clip.antiAlias,
          //       child: Text(
          //         'Selena Travel',
          //         style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w800),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
