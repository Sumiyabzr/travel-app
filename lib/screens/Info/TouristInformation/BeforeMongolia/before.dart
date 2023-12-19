import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/BeforeMongolia/transportation.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/BeforeMongolia/vaccines.dart';

class Before extends StatefulWidget {
  const Before({super.key});

  @override
  State<Before> createState() => _BeforeState();
}

class _BeforeState extends State<Before> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Before Mongolia',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Transportation(),
                      )),
                  child: Column(children: [
                    Icon(
                      Icons.airplanemode_active_rounded,
                      color: HexColor('#F02310'),
                      size: 60,
                    ),
                    Text('Transportation')
                  ]),
                ),
                Column(children: [
                  Container(
                    child: Icon(
                      Icons.assistant_photo,
                      color: HexColor('#2984B0'),
                      size: 60,
                    ),
                  ),
                  Text('Main entry points')
                ]),
                Column(children: [
                  Container(
                    child: Icon(
                      Icons.quick_contacts_dialer,
                      color: HexColor('#F5BF15'),
                      size: 60,
                    ),
                  ),
                  Text('Visas')
                ])
              ],
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Vaccines(),
                      )),
                  child: Column(children: [
                    Icon(
                      Icons.health_and_safety_rounded,
                      color: HexColor('#FF5F9D'),
                      size: 60,
                    ),
                    Text('Vaccines')
                  ]),
                ),
                Column(children: [
                  Icon(
                    Icons.clean_hands_rounded,
                    color: HexColor('#136A3F'),
                    size: 60,
                  ),
                  Text('Insurances')
                ]),
                Column(children: [
                  Icon(
                    Icons.sunny_snowing,
                    color: HexColor('#C77F44'),
                    size: 60,
                  ),
                  Text('Weather')
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Icon(
                    Icons.luggage,
                    color: HexColor('#2E2C78'),
                    size: 60,
                  ),
                  Text('What to pack')
                ]),
                Column(children: [
                  Icon(
                    Icons.monetization_on,
                    color: HexColor('#F07E26'),
                    size: 60,
                  ),
                  Text('Currancy')
                ]),
                Column(children: [
                  Icon(
                    Icons.people_alt_sharp,
                    color: HexColor('#1EA3E0'),
                    size: 60,
                  ),
                  Text('Family trips')
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
