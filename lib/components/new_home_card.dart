import 'package:flutter/material.dart';

class NewHomeCard extends StatefulWidget {
  final List<dynamic> data;
  const NewHomeCard(this.data, {super.key});

  @override
  State<NewHomeCard> createState() => _NewHomeCardState();
}

class _NewHomeCardState extends State<NewHomeCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        switch (widget.data[0]) {
          case "Destination":
            Navigator.pushNamed(context, '/travel');
            break;
          case "Events":
            Navigator.pushNamed(context, '/events');
            break;
          case "Info":
            Navigator.pushNamed(context, '/info');
            break;
          case "Commercial":
            Navigator.pushNamed(context, '/commercial');
            break;
          case "Tours":
            Navigator.pushNamed(context, '/tours');
            break;
          case "Visit UB":
            Navigator.pushNamed(context, '/ulaanbaatar');
            break;
          case "Login":
            Navigator.pushNamed(context, '/login');
            break;
          case "Accommodation":
            Navigator.pushNamed(context, '/newaccommodation');
            break;
        }
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            width: (size.width - 10) / 5,
            height: (size.width - 230) / 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image(
                    image: AssetImage(widget.data[1]),
                    // fit: BoxFit.cover,
                    // height: 50,
                    // width: 50,
                  ),
                ),
              ],
            ),
          ),
          Text(
            widget.data[0],
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
      // Container(
      //   width: (size.width - 45) / 2,
      //   // width: (size.width) / 5,
      //   height: (size.width - 45) / 2,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(5),
      //     image: DecorationImage(
      //         fit: BoxFit.cover,
      //         filterQuality: FilterQuality.high,
      //         image: AssetImage(widget.data[1])),
      //   ),
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(5),
      //         gradient: LinearGradient(
      //             begin: Alignment.bottomCenter,
      //             end: Alignment.center,
      //             colors: [Colors.black, Colors.black.withOpacity(0.1)])),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           widget.data[0],
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 15,
      //               fontWeight: FontWeight.w700),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
