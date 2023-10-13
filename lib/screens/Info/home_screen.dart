import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/category_screen.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              'Information',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryInfo(),
                    ),
                  ),
                  child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(top: 25),
                      height: size.height * 0.35,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                'http://192.168.0.103:7000/asset/info8.jpg',
                              ),
                              fit: BoxFit.cover)),
                      clipBehavior: Clip.antiAlias,
                      child: Text(
                        'Nomadic life style',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryInfo())),
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: 25),
                        height: size.height * 0.35,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'http://192.168.0.103:7000/asset/info6.jpg',
                                ),
                                fit: BoxFit.cover)),
                        clipBehavior: Clip.antiAlias,
                        child: Text(
                          'History',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryInfo())),
                  child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(top: 25),
                      height: size.height * 0.4,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://192.168.0.103:7000/asset/info5.jpg'),
                              fit: BoxFit.cover)),
                      clipBehavior: Clip.antiAlias,
                      child: Text(
                        'Content',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  width: 4,
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryInfo())),
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: 25),
                        height: size.height * 0.4,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.0.103:7000/asset/info7.jpg'),
                                fit: BoxFit.cover)),
                        clipBehavior: Clip.antiAlias,
                        child: Text(
                          'Tourist information',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                  ),
                ]),
                const SizedBox(
                  width: 4,
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryInfo())),
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: 25),
                        height: size.height * 0.4,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://192.168.0.103:7000/asset/info1.jpg'),
                                fit: BoxFit.cover)),
                        clipBehavior: Clip.antiAlias,
                        child: Text(
                          'Religion',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
