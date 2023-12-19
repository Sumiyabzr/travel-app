import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/BeforeMongolia/before.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/Emergency/EmergencyHospital/emergency.dart';

class ToursitInformation extends StatefulWidget {
  const ToursitInformation({super.key});

  @override
  State<ToursitInformation> createState() => _ToursitInformationState();
}

class _ToursitInformationState extends State<ToursitInformation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Tourist information',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/3783/a9f1/1b2cfef9b1a39346a790a7fb2bc86dc7?Expires=1699228800&Signature=US88iCzoZ81arI9cEeAB9ePKg7oZV2jMfd4uGP7pHMkV~-QI677ACyELr-gyygLLkT44hRGlYqQiNGb911xjWvdmaiCWXNY5LgBgzwVpugscfAROae5MOd999rDz7toJ16JTu0U1f~3lt~5eHpQT2My2UbwtEbSF2Sp83s5xENn1yg-WdAszK2vwkt0r926ZAlbUVbFAAFeQeES2ua21YEzoKUrCWOpSvrjwICx4o1Sa~yoUgckT-kE-wSVJJZVK-ph4o9~UFmW2D3bY-9xiP4mbWkK-8MXo0~26ZF-zSe5wTOeMoYymCIZboX7q2JO9QRadaiVdiBBCCDin74qD9Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width,
                height: size.height * 0.2,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ready for your adventure?',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  'In order to discover Mongolia is untamed beauty and nomadic culture, let’s review together what are the essential points to make the most out of your trip. From transportation, to visas, preparing your pack or other related tips once arrived, you will find a collection of useful information that can help you to appreciate Mongolia to the fullest.'),
              SizedBox(
                height: 26,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Before(),
                          )),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://s3-alpha-sig.figma.com/img/9d6d/b8c3/955c6d0fb04ffe785bcb48453828fee6?Expires=1699228800&Signature=mxDRKvD~0QLLuX4lzqRL7qYh4d~SBTCrYMEaea1Kx7mk0SAYwwmpqyHGn6Yg15Lngbaa06VzSYLA1MbPCcw1gMzuEnNd6OL4DD5fP6suq6OoiaZ0lPOwcid5sWkWJmaiaE1uaFAUmhLwTEY9laogI~WHZZUV74oMSz0tWD~VIqTtBEF1oUY4M8OE3giKkJdyWvvMm10rZfhbeglXp06~VaygZMKLeoaus6sIiaQMA9GZtk8DVQ3An-zP8kQAIG4oDSUL~SDkJkPvWfYDsNkLsRy9FRoHQUMTlyHkcf2McEvuHF-FIeINWbU1OFw1MzIxIi6knvD47EIK42bS70GCzw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            width: size.width * 0.43,
                            height: size.height * 0.2,
                          ),
                          Text('Before Mongolia',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Emergency(),
                              )),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://s3-alpha-sig.figma.com/img/bd79/51dd/d2fd9742322d0f90d7f7edff3eb5bc37?Expires=1699228800&Signature=LIaJP-i5qhtRxXqIUKwb4XTSX-S2ksjqtL9KVCkWIZD9YalQhzO2jh1~ic~5MjrrovzLbZnbnndW7ND~fYhNWqsAJNKsAMu1AxFICmMudmj68xRlUJJgU58v25SA7Bw4zGZJuNEm987Wacs~25a01r-LgkLCYARhUgS2yCHBUJT8IByTuTfWJcEIjtua15I5gxPu9DUdYIF6W~R-mwkAg94VYYmqN~gzbSUZF2zMoqhfPF6J7Gof-d4pGhYPzFu7lxjRYITYavvmTz4D5iDn7ArCvZ8I86mA7d31ePfqMAtsrOzchuWIGJjhqmJMiUvLw8WMQ7Nzot69b4eMsU-oLA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                                width: size.width * 0.43,
                                height: size.height * 0.2,
                              ),
                              Text('Emergency',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      // onTap: () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => ReligionHome(),
                      //     )),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://s3-alpha-sig.figma.com/img/f365/c3b7/292ac643c884ff1a6008a4ee8dc2af19?Expires=1699228800&Signature=UZYItTEelXhUtuNQh08P3-hEEuF8WzzZMlS~c9OT-~SCCO7gST5J20YqQo-Xd9OvBkeQd3AlivaOH4fy89XoLfbvVz0fz1dPov9Qo52j1VFFhzkdDLt-IwC2Bk2rjoooTY3SKoc6p9t-Jp0S~3cVzewaF7xQVmEYYemC9IWP8XUtG9GaWV3X6CnEmYnvb2JZyV-AtKp8eDpZRjW0eP37E~Xeb63ZiCFGQ7Gwy7MMvlYsMOfwxal37ublvQu2P9Cq3TjNlJ6REbIEtO7Bzs8eqZY-1pAGSe87XQSZDJMxibevJsu9KNTnnIhlikjSYAtpMzTCdTNrWxO3fPQWuCDJLw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            width: size.width * 0.43,
                            height: size.height * 0.2,
                          ),
                          Text('Practical in Mongolia',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://s3-alpha-sig.figma.com/img/264b/1345/f57ad3de4787c0d01b73586402d9d47f?Expires=1699228800&Signature=DBhVZ~MPE2i1dEGaqhSjUqrPwKNLI6KQT0~Tp4wLUgHnjrvneIku1cAcV198h2nnCHTAelDgn-i9MHZxt-c7xJwZdpmvWKZT7JSEfeL~kfXGKKbayL2CxCyw0cvD4ibehpupjJXHFXwt9HC5mt7SiTKQ42G4b0OVLv1fgK0z~YpWISm7YQfoGXRnfmqz4nyFAi8DZSw6rjmoHN2ssOoJPyKKWENJpKjTJRkHQc0BBydAQp45qyIJy6NpCaC5GuyIz9RzrYakyaHYdS06LcqG7spZ0-aq4p2BZKpfiVz8Eiv47kSNymBwGrfs6NMGpFslhd~g~-viygX6bQ2HAN1MXA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          width: size.width * 0.43,
                          height: size.height * 0.2,
                        ),
                        Text('FAQ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ],
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
