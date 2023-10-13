import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import '../../components/MiniCard.dart';

class Events_screen extends StatefulWidget {
  const Events_screen({super.key});

  @override
  State<Events_screen> createState() => Events_screenState();
}

class Events_screenState extends State<Events_screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 28,
                )),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: List.generate(
                    provider.eventProducts.length,
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
                                    provider.eventCategories[index]['name'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
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
                                          provider.eventProducts[index].length,
                                          (index1) => MiniCard("/desEvent",
                                              "eventProduct", index, index1)),
                                    ),
                                  )),
                            ),
                          ],
                        )),
              ),
            ),
          ),
        );
      },
    );
  }
}
