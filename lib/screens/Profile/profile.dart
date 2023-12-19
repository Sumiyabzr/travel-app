import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visitulaanbaatar/screens/Commercial/home_screen.dart';
import 'package:visitulaanbaatar/screens/Events/home_screen.dart';
import 'package:visitulaanbaatar/screens/Profile/edit_pro.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/Accommodation.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/Destinations.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> tabs = [
    "Destination"
        "Accommodation"
        "Commercial"
        "Events"
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 28,
              )),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Edit_Profile(),
                  ),
                );
              },
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/tours.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'User name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('Joined in 2023'),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Chip(
                        label: Text(
                          'Saved',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        avatar: Icon(Icons.favorite),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [HexColor('#1862FF'), HexColor('#5A9BF8')]),
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: [
                Tab(
                  text: 'Destination',
                ),
                Tab(
                  text: 'Accommodation',
                ),
                Tab(
                  text: 'Commercial',
                ),
                Tab(
                  text: 'Events',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Destinations(),
                  ),
                  Center(
                    child: Accommodation(),
                  ),
                  Center(
                    child: Commercial_screen(),
                  ),
                  Center(
                    child: Events_screen(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
