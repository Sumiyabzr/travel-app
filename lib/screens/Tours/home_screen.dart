import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Tours/second_screen.dart';

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
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
              iconSize: 28,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text(
              'Tour Operators',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondTourScreen())),
              child: Container(
                width: size.width,
                height: size.height * 0.18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image:
                        NetworkImage('http://192.168.0.103:7000/asset/BNM.jpg'),
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Brave New Mongolia Tours',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.0.103:7000/asset/DiscoveryMongoliaTours.jpg')),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: Text(
                'Discovery Mongolia Tours',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.0.103:7000/asset/Juulchin.jpg')),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: Text(
                'Juulchin',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.0.103:7000/asset/KhongorExpeditions.jpg')),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: Text(
                'Khongor Expeditions',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(
                        'http://192.168.0.103:7000/asset/SelenaTravel.jpg')),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: Text(
                'Selena Travel',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
