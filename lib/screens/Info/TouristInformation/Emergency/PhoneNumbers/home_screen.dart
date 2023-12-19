import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(
                      'https://s3-alpha-sig.figma.com/img/a4b5/9b44/781e4784a1d4d7c2a28ae32418f105ab?Expires=1699833600&Signature=htSszNxSaY1JJGSy3BZKpsQNqSfturrz-~bbl5D4LnXyozEZ9wZHS9jeIbsaw~G2R1On-rMYd5bh9sFe-OBjNAbs67bbChdHzgn~hDJN5ILo1ZGdVKkRcoHvX0EYb3otM3LW~BSf4Jn6-XzoULlC5s3pjLKMqlZBizZp5Uc-5xI2F1~XZhG1S8PY7wtjirvwbP2JCxrdcXjkvfWvfci5hTYXRcK6sHzeirpdc56VUFMNNvbfFBG3KBkW-ig80iM6fncUWEzIT-QeQQMzj-4~1UAqMR3boHkiv0bkL2gf2eeQw46VwJ8oBJEVKmagXaBq3wxizKzM8~SR~uYeX-cRdA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                      fit: BoxFit.cover),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Phone Numbers',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Useful local phone numbers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      'In Mongolia, the emergency services are accessible through the following phone numbers:'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Emergency Services',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: HexColor('#EAEAEA')),
                      width: size.width,
                      height: size.height * 0.1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '102',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  'This number can be used to report general emergencies, such as accidents, medical emergencies, or fires.'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.black),
                                width: 48,
                                height: 48,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.phone_in_talk_rounded,
                                    color: Colors.white,
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Police',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: HexColor('#EAEAEA')),
                      width: size.width,
                      height: size.height * 0.1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '102',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  'If you need assistance from the police for any reason, you can dial the emergency services number, 102.'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.black),
                                width: 48,
                                height: 48,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.phone_in_talk_rounded,
                                    color: Colors.white,
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Medical Emergency (Ambulance)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: HexColor('#EAEAEA')),
                      width: size.width,
                      height: size.height * 0.1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '103',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  'For medical emergencies or if you require an ambulance, dial 103. This number connects you to the medical emergency services.'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.black),
                                width: 48,
                                height: 48,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.phone_in_talk_rounded,
                                    color: Colors.white,
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Fire Department',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: HexColor('#EAEAEA')),
                      width: size.width,
                      height: size.height * 0.1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '101',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  'In case of a fire or if you need assistance from the fire department, dial 101.'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.black),
                                width: 48,
                                height: 48,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.phone_in_talk_rounded,
                                    color: Colors.white,
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                      'It`s important to note that English proficiency may be limited among emergency responders, so it`s helpful to have a local contact or translator who can assist with communication in Mongolian if necessary. Additionally, ensure you have a means of communication and knowledge of your location, especially when traveling in remote or less populated areas in Mongolia, as response times can vary.')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
