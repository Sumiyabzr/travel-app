import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  final List<dynamic> data;
  const HomeCard(this.data, {super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        switch (widget.data[0]) {
          case "Travel Destinations":
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
        }
      },
      child: Container(
        width: (size.width - 45) / 2,
        height: (size.width - 45) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              image: AssetImage(widget.data[1])),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [Colors.black, Colors.black.withOpacity(0.1)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.data[0],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
