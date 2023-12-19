import 'package:flutter/material.dart';

class SOSMedica extends StatefulWidget {
  const SOSMedica({super.key});

  @override
  State<SOSMedica> createState() => _SOSMedicaState();
}

class _SOSMedicaState extends State<SOSMedica> {
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
                          'https://s3-alpha-sig.figma.com/img/78a2/1d95/a23d92cbb0922a87caef29846bf8a7cc?Expires=1699833600&Signature=KLqAOR7F8IYiN1V~WosbBwcNqUw0Xn-57apTZmFisEyosLGG90MtdeEPymkOaeSFv4d0CLavKVZLq1f9f3GoIn5mTIeNRQB8bQLe0tmIBfbIqacsAunHxjij61TW6QtFIFCQNfJVafe2syC1C8Fp~f2oEXU4M3auPqBf7oEvwEQGEwVPEGifuur-CCxIxEXXa7H5Asv-BMhuIs3lKU~WSCsuo77Ji-AYT8~YGokn~vw6MktIZu5Hq9KSm21DB4UXBGkBmN47RkHMpl0yfHXlcuZx1qe2HjIqcdR3iY0GgygLwmNdTqxNrb~1c4tvBQ8psA-KIS2NEE8GvnD06BHRSw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                    // Text(
                    //     'Mongolia has several hospitals and medical facilities, including emergency hospitals, that provide medical services to residents and travelers. While this isn`t an exhaustive list of emergency hospitals existing in Mongolia, here are some of the best and specialized hospitals in Ulaanbaatar, the capital city of Mongolia, which often serve as the primary facilities for emergency medical care, working with international travel insurance companies:'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '1146-4325, 1146-4326, 1146-4327',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fmd_good_outlined,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  '4a Building, Big Ring Road, 15th Micro District, 7th Khoroo  Bayanzurkh District, Ulaanbaatar',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.link,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('admin@sosmedico.mn'))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  'Monday-Friday: 0900-1800. ',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.markunread_outlined,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  'admin@sosmedico.mn',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.print_outlined,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  '1145-4537',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                              'Located just over the hill and a bridge near the US Embassy, this is another major medical facility in Ulaanbaatar, providing emergency and general medical services, with part of the medical staff speaking English. The clinic has X-ray, ultrasound and a lab facility on site. The clinic is staffed with two English-speaking, Emergency-trained Physicians and has Pediatrics, Physical Therapy, Acupuncture, and Dental. Minor injuries (broken bones or sprains) can be treated here. For non-urgent concerns, call ahead for appointments during business hours.')
                        ],
                      ),
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
