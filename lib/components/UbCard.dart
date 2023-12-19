import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/City%20tour/citytour.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/History/history.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/Museums/home_screen.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/Place2Visit/home_screen.dart';

class UbCard extends StatefulWidget {
  final int index;
  const UbCard(this.index, {super.key});

  @override
  State<UbCard> createState() => _UbCardState();
}

class _UbCardState extends State<UbCard> {
  List<List<String>> ubCardData = [
    // ["assets/images/Cultural.jpg", "Cultural Places"],
    ["assets/images/Cultural.jpg", "Places to visit"],
    ["assets/images/Q (1 of 1).jpg", "Museums"],
    ["assets/images/qqqq (1 of 1).jpg", "City Tour"],
    ["assets/images/qq (1 of 1).jpg", "History of the Capital"]
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: () => {
          // if (ubCardData[widget.index][1].toString() == "Cultural Places")
          //   {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (_context) => Cultural()))
          if (ubCardData[widget.index][1].toString() == "Places to visit")
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_context) => PlaceToVisit()))
            }
          else if (ubCardData[widget.index][1].toString() == "Museums")
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_context) => Museums()))
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
                  image: AssetImage(ubCardData[widget.index][0])),
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
