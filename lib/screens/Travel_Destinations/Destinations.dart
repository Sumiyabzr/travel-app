import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/components/MiniCard.dart';
import 'package:visitulaanbaatar/components/UbCard.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import '../SeeAll/SeeAll.dart';

class Destinations extends StatefulWidget {
  const Destinations({super.key});

  @override
  State<Destinations> createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          // appBar: AppBar(
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          //   centerTitle: true,
          //   title: Text(
          //     'Destinations',
          //     style: TextStyle(color: Colors.black, fontSize: 16),
          //   ),
          // ),
          // bottomNavigationBar: BottomNavigationBar(items: [
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.account_circle,
          //       color: Colors.black,
          //     ),
          //     label: 'Home',
          //   ),
          //   BottomNavigationBarItem(
          //       icon: Icon(Icons.manage_accounts),
          //       label: 'Home',
          //       backgroundColor: Colors.black),
          //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //   // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
          // ]),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ub card
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(
                    "Ulaanbaatar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                        children: List.generate(4, (index) => UbCard(index))),
                  ),
                ),
                Column(
                  children: List.generate(
                      6,
                      (index) => Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      provider.categories[index]['name'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        provider.setCategoryIndex(index);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SeeAll(0)));
                                      },
                                      child: Text(
                                        'See all',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Wrap(
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          spacing: 15,
                                          children: List.generate(
                                            provider.products[index].length,
                                            (index1) => MiniCard('/desDetail',
                                                "desProduct", index, index1),
                                          )),
                                    )),
                              ),
                            ],
                          )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
