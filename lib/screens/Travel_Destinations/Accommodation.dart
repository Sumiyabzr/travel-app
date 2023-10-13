import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';

import '../../components/MiniCard.dart';
import '../SeeAll/SeeAll.dart';

class Accommodation extends StatefulWidget {
  const Accommodation({super.key});

  @override
  State<Accommodation> createState() => _AccommodationState();
}

class _AccommodationState extends State<Accommodation> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                6,
                (index) => Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                provider.categories[index]['name'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                onTap: () {
                                  provider.setCategoryIndex(index);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SeeAll(1)));
                                },
                                child: GestureDetector(
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Wrap(
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  spacing: 15,
                                  children: List.generate(
                                      provider.products[index].length,
                                      (index1) => MiniCard('/accCamp',
                                          "desProduct", index, index1)),
                                ),
                              )),
                        ),
                      ],
                    )),
          ),
        ),
      );
    });
  }
}
