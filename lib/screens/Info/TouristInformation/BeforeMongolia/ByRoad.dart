import 'package:flutter/material.dart';

class ByRoad extends StatefulWidget {
  const ByRoad({super.key});

  @override
  State<ByRoad> createState() => _ByRoadState();
}

class _ByRoadState extends State<ByRoad> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/f140/5bba/9a12a5add9d838d41d3877de8bd3191a?Expires=1699833600&Signature=aOlEdthyYa585BDJusSaIdIVqjYs0CWrFVuWgUH6su6MpUftjy3k0zExV4FtIs2rz8O-uhSHRNSJg9~~grn0boqXm597fT2nkEUUJYbUopUxQmBYWU63YhGzOuyhdCQGia1FTOoeDcpd3~OIZj4q2esJCMeM916zBenc8-ax9L51oTTXV6ngyZQ46ZDO4rJo04uWRIhMte0G7WFWggSHg~r7EPfbnRPVLmCylNi0I402PKQoIweEhRbly7ldgtFPOl1qfBT6BbyCqH2kmNa7CHzABqrLG7UfadjJuw9ilW5f-ILvKkjRdBBjFRC~hpseSizYumXV0pc0DiGRk3n~IA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: size.width,
                height: size.height * 0.3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                        'Traveling overland is also possible and rewarding too. You can enter Mongolia by road from neighboring countries like Russia and China. Border crossings exist, and you can use private vehicles or hire a driver for that matter. '),
                    SizedBox(height: 10),
                    Text(
                        'Traveling by bus is also another a cost-effective but often time-consuming option. Border crossings are all listed on the main entry points of the app on the next section. '),
                    SizedBox(height: 10),
                    Text(
                        'Remember that visa requirements and entry conditions may vary depending on your nationality and chosen means of transportation. Before you travel to Mongolia, research the most suitable option for your preferences, plan accordingly, and check for any visa and travel restrictions.'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
