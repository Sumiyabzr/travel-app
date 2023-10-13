import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/components/MiniCard.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/SeeAll/SeeAll.dart';

class Commercial_screen extends StatefulWidget {
  const Commercial_screen({super.key});

  @override
  State<Commercial_screen> createState() => _Commercial_screenState();
}

class _Commercial_screenState extends State<Commercial_screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(builder: (context, provider, child) {
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
            child: Column(
              children: List.generate(
                  2,
                  (index) => Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hotel",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                InkWell(
                                  onTap: () {
                                    provider.setCategoryIndex(index);
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
                                    // children: List.generate(
                                    //     provider.products[index].length,
                                    //     (index1) => MiniCard(
                                    //         '/accCamp', index, index1)),
                                  ),
                                )),
                          ),
                        ],
                      )),
            ),
          ));
    });
  }
}
