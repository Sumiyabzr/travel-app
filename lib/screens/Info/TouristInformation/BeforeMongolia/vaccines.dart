import 'package:flutter/material.dart';

class Vaccines extends StatelessWidget {
  const Vaccines({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Vaccines',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 28,
            )),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Text(
                    'Traveling to Mongolia, like any international trip, requires some health precautions to ensure a safe and enjoyable journey. Here are some health recommendations for traveling to Mongolia:'),
                SizedBox(
                  height: 16,
                ),
                //////////////////////////////////////////////////// ROW 1 ////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomDialogWidget1(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'http://202.179.6.26:8000/asset/a.png')),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0),
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Vaccinations',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/b.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Yellow Fever Certificate',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/c.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Food and Water Safety',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  ],
                ),
                //////////////////////////////////////////////// ROW 2 ///////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/d.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Hand Hygiene',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/b.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Altitude Considerations',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/e.png')),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          ' Travel Health Insurance',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  ],
                ),
                ////////////////////////////////////////// ROW 3 ///////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/f.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Medical Supplies',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/b.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Insect Protection',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/g.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Sun Protection',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  ],
                ),
                ////////////////////////////////////////// ROW 4 ///////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/h.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Medical Facilities',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/i.png')),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          'Prescription Medications',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.12,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/j.png')),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: Text(
                          ' Food and Travel Precautions',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ]),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class CustomDialogWidget1 extends StatelessWidget {
  const CustomDialogWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          width: size.width,
          height: size.height * 0.30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'http://202.179.6.26:8000/asset/a.png',
                width: 42,
                height: 42,
              ),
              Text(
                'Vaccinations',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Consult a healthcare provider or travel clinic for recommended and required vaccinations. Common vaccines for Mongolia include those for hepatitis A, hepatitis B, typhoid, and routine immunizations. Please note as of 2023, Mongolia authorities officially do not request any vaccination against COVID-19 to enter the country.')
            ],
          ),
        ),
      ),
    );
  }
}
