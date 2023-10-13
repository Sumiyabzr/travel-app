import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../global_keys.dart';
import '../provider/common.dart';
import '../screens/Details/Destinations.dart';

class Card_horizantiol extends StatefulWidget {
  final int index;
  final bool screen;
  const Card_horizantiol(this.index, this.screen, {super.key});

  get data => null;

  @override
  State<Card_horizantiol> createState() => Card_horizantiolState();
}

class Card_horizantiolState extends State<Card_horizantiol> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return widget.screen
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () => {
                    provider.setProductIndex(widget.index),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_context) => DesDetail()))
                  },
                  child: Container(
                    height: size.height * 0.18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        Container(
                          width: size.height * 0.17,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "http://192.168.0.103:7000/asset/" +
                                          provider.accProducts[
                                                      provider.categoryIndex]
                                                  [provider.productIndex]
                                              [widget.index]['photo'][0]))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.48,
                                child: Text(
                                  provider.accProducts[provider.categoryIndex]
                                          [provider.productIndex][widget.index]
                                      ['name'],
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on, size: 12),
                                    SizedBox(
                                      width: size.width * 0.47,
                                      child: Text(
                                          provider.accProducts[
                                                      provider.categoryIndex]
                                                  [provider.productIndex]
                                              [widget.index]['Location'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: size.width * 0.49,
                                  child: Text(
                                    provider.accProducts[provider.categoryIndex]
                                            [provider.productIndex]
                                        [widget.index]['description'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () => {
                    provider.setProductIndex(widget.index),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_context) => DesDetail()))
                  },
                  child: Container(
                    height: size.height * 0.18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        Container(
                          width: size.height * 0.17,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "http://192.168.0.103:7000/asset/" +
                                          provider.products[
                                                  provider.categoryIndex]
                                              [widget.index]['photo']))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.48,
                                child: Text(
                                  provider.products[provider.categoryIndex]
                                      [widget.index]['name'],
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on, size: 12),
                                    SizedBox(
                                      width: size.width * 0.47,
                                      child: Text(
                                          provider.products[
                                                  provider.categoryIndex]
                                              [widget.index]['location'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: size.width * 0.49,
                                  child: Text(
                                    provider.products[provider.categoryIndex]
                                        [widget.index]['description'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
