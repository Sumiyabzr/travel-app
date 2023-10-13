import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/screens/Details/Accommodation.dart';
import 'package:visitulaanbaatar/screens/Details/Destinations.dart';
import 'package:visitulaanbaatar/screens/Details/Events.dart';
import 'package:visitulaanbaatar/screens/Commercial/home_screen.dart';

import '../screens/SeeAll/SeeAll.dart';

class MiniCard extends StatefulWidget {
  final String routeName;
  final String dataName;
  final int categoryIndex;
  final int productIndex;
  MiniCard(this.routeName, this.dataName, this.categoryIndex, this.productIndex,
      {super.key});

  @override
  State<MiniCard> createState() => _MiniCardState();
}

class _MiniCardState extends State<MiniCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.only(left: 0),
          child: GestureDetector(
            onTap: () => {
              provider.setCategoryIndex(widget.categoryIndex),
              provider.setProductIndex(widget.productIndex),
              if (widget.routeName == '/desDetail')
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => DesDetail()))
                }
              else if (widget.routeName == '/accCamp')
                {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SeeAll(0)))
                }
              else if (widget.routeName == '/accDetail')
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => AccDetail()))
                }
              else if (widget.routeName == '/desEvent')
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => EventDetail()))
                }
            },
            child: Container(
                width: size.width / 2.43,
                height: size.height / 4.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      colorFilter:
                          ColorFilter.mode(Colors.black12, BlendMode.dst),
                      filterQuality: FilterQuality.medium,
                      image: NetworkImage('http://192.168.0.103:7000/asset/' +
                          provider.getProducts(
                                  widget.dataName)![widget.categoryIndex]
                              [widget.productIndex]['photo'])),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height / 4.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              colors: [
                                Colors.black87,
                                Colors.black12.withOpacity(0.005)
                              ])),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            provider.getProducts(
                                    widget.dataName)![widget.categoryIndex]
                                [widget.productIndex]['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: provider
                                          .getProducts(widget.dataName)![
                                              widget.categoryIndex]
                                              [widget.productIndex]['name']
                                          .length <
                                      20
                                  ? 16
                                  : 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
