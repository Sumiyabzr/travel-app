import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Details/Destinations.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/citytour.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/History/history.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/Museum/home_screen.dart';

class UbCard extends StatefulWidget {
  final int index;
  const UbCard(this.index, {super.key});

  @override
  State<UbCard> createState() => _UbCardState();
}

class _UbCardState extends State<UbCard> {
  List<List<String>> ubCardData = [
    ["http://192.168.0.103:7000/asset/qqq (1 of 1).jpg", "Cultural Places"],
    ["http://192.168.0.103:7000/asset/Q (1 of 1).jpg", "Museums"],
    ["http://192.168.0.103:7000/asset/qqqq (1 of 1).jpg", "City Tour"],
    [
      "http://192.168.0.103:7000/asset/qq (1 of 1).jpg",
      "History of the Capital"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: () => {
          if (ubCardData[widget.index][1].toString() == "Cultural Places")
            {}
          else if (ubCardData[widget.index][1].toString() == "Museums")
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_context) => Museum()))
            }
          else if (ubCardData[widget.index][1].toString() == "City Tour")
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_context) => CityTour()))
            }
          else if (ubCardData[widget.index][1].toString() ==
              "History of the Capital")
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_context) => History()))
            }
        },
        child: Container(
            width: size.width * 0.86,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  colorFilter: ColorFilter.mode(Colors.black12, BlendMode.dst),
                  filterQuality: FilterQuality.medium,
                  image: NetworkImage(ubCardData[widget.index][0])),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.25,
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
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        ubCardData[widget.index][1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
