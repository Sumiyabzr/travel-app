import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ToursDetail extends StatefulWidget {
  const ToursDetail({super.key});

  @override
  State<ToursDetail> createState() => _ToursDetailState();
}

class _ToursDetailState extends State<ToursDetail> {
  PageController _controller = PageController();
  bool _customIcon = false;
  List<bool> isSelected = [false];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: size.width,
                    child: PageView.builder(
                        controller: _controller,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: 4,
                        itemBuilder: (context, index) => Container(
                              width: size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "http://202.179.6.26:8000/asset/brand${index + 1}.jpg"),
                                      fit: BoxFit.cover)),
                            )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SafeArea(
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.arrow_back_rounded),
                            ),
                          ),
                          SafeArea(
                              child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: ToggleButtons(
                                borderRadius: BorderRadius.circular(5),
                                borderWidth: 0,
                                selectedColor: Colors.red,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                  ),
                                ],
                                onPressed: (int index) {
                                  setState(
                                    () {
                                      isSelected[index] = !isSelected[index];
                                    },
                                  );
                                },
                                isSelected: isSelected),
                          )
                              // IconButton(
                              //   onPressed: () {

                              //   },
                              //   icon: Icon(
                              //     Icons.favorite_border,
                              //     color: Colors.red,
                              //   ),
                              // ),
                              )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 245,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: WormEffect(
                            activeDotColor: Colors.red,
                            dotColor: Color.fromARGB(255, 109, 109, 109),
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wonders Around UB',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Image.network(
                          'http://202.179.6.26:8000/asset/juulchinlogo.png',
                          width: 96,
                          height: 96,
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_sharp,
                          ),
                          Text(
                            'Duration:',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text('3 days, 2 nights')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade100,
                      ),
                      width: size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: Text(
                              'Mongolia is vast and one of the most amazing places on the earth and no one will argue on it. It has such as beautiful natural formation, unique nomadic culture, huge history and Mongolian are very hospitable. They have kept them for many centuries generation to generation. There is no fence on this land. Now come! Experience all these wilderness and natural wonders. This tour offers you to enjoy the historically significant Kharakhorum, spectacular Khugnu Tarna National park and experience the nomadic culture.',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Itinerary',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade100),
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 16,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: size.width,
                          child: Column(
                            children: <Widget>[
                              ExpansionTile(
                                title: Text(
                                  'Day 1 Khugnu Tarna Natural Reserve',
                                  style: TextStyle(fontSize: 12),
                                ),
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'Khugnu Khan natural reserve covers 46,990 hectares of land and located in Rashaant soum of Bulgan province. The park is a splendid mountain and situated at the border of three provinces.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            height: size.height * 0.25,
                                            width: size.width,
                                            child: PageView.builder(
                                                controller: _controller,
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                itemCount: 4,
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15),
                                                      child: Container(
                                                        width: size.width,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "http://202.179.6.26:8000/asset/brand${index + 1}.jpg"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    )),
                                          ),
                                          SizedBox(
                                            width: size.width,
                                            height: size.width * 0.53,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SmoothPageIndicator(
                                                controller: _controller,
                                                count: 4,
                                                effect: WormEffect(
                                                    activeDotColor: Colors.red,
                                                    dotColor: Color.fromARGB(
                                                        255, 109, 109, 109),
                                                    dotHeight: 10,
                                                    dotWidth: 10),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Container(
                                            width: size.width * 0.25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: HexColor(
                                                '#5A9BF8',
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Details',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                                onExpansionChanged: (bool expanded) {},
                              ),
                              ExpansionTile(
                                title: Text(
                                  'Day 2 Khugnu Tarna Natural Reserve',
                                  style: TextStyle(fontSize: 12),
                                ),
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'Khugnu Khan natural reserve covers 46,990 hectares of land and located in Rashaant soum of Bulgan province. The park is a splendid mountain and situated at the border of three provinces.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            height: size.height * 0.25,
                                            width: size.width,
                                            child: PageView.builder(
                                                controller: _controller,
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                itemCount: 4,
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15),
                                                      child: Container(
                                                        width: size.width,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "http://202.179.6.26:8000/asset/brand${index + 1}.jpg"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    )),
                                          ),
                                          SizedBox(
                                            width: size.width,
                                            height: size.width * 0.53,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SmoothPageIndicator(
                                                controller: _controller,
                                                count: 4,
                                                effect: WormEffect(
                                                    activeDotColor: Colors.red,
                                                    dotColor: Color.fromARGB(
                                                        255, 109, 109, 109),
                                                    dotHeight: 10,
                                                    dotWidth: 10),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Container(
                                            width: size.width * 0.25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: HexColor(
                                                '#5A9BF8',
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Details',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                                onExpansionChanged: (bool expanded) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Includes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Colors.grey.shade100,
                      ),
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Chip(
                                label: Text(
                                  'Transfers on arrival and departure',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Chip(
                                label: Text(
                                  'English speaking guide at all times',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'All other lodging will be in Ger camps, tents or nomadic family',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'Ground transportation by chauffeured 4WD vehicle',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'Park entrance fees',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'Horses for riding fee',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Exludes',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'Transfers on arrival and departure',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'English speaking guide at all times',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                              Chip(
                                autofocus: true,
                                label: Text(
                                  'All other lodging will be in Ger camps, tents or nomadic family',
                                  style: TextStyle(fontSize: 9),
                                ),
                                avatar: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tour price',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        TabBar(
                          labelColor: Colors.black,
                          indicator: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  HexColor('#1862FF'),
                                  HexColor('#5A9BF8')
                                ]),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          tabs: [
                            Tab(
                              height: 100,
                              icon: Icon(Icons.directions_bus_filled_rounded),
                              text: 'Budget',
                            ),
                            Tab(
                              icon: Icon(Icons.directions_car_rounded),
                              text: 'Comfort',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              width: size.width * 0.45,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('1pax:'),
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 15,
                                    ),
                                    Text('625')
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              width: size.width * 0.45,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('2pax:'),
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 15,
                                    ),
                                    Text('485')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              width: size.width * 0.45,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('3pax:'),
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 15,
                                    ),
                                    Text('435')
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              width: size.width * 0.45,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4+pax:'),
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 15,
                                    ),
                                    Text('411')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
