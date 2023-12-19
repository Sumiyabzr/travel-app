import 'package:flutter/material.dart';

class Intermed extends StatefulWidget {
  const Intermed({super.key});

  @override
  State<Intermed> createState() => _IntermedState();
}

class _IntermedState extends State<Intermed> {
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
                          'https://s3-alpha-sig.figma.com/img/c352/070f/ce93a11714b9536e6f017aef0871dedf?Expires=1699833600&Signature=k673LXbhYqdiA5g3aw75bh2cfLYH5~0Jvkf9MoOUGCkz~uSs8xGas01OdnEUZc8p0lPfKqHuHumzWQ45Jjbx9UsJpG2NUpktieYGmGdVUQRtUKoAUVHgtlESdOYaXYqQNt9VAH0o1VJlHmKUw4rXmjbbbEWbILjeJnMUTvDqsbYsgLLe94yRKmt6QzE8pvJwZzbVQJ7r0Z3iN~roIEoNUiayI-x4u39Nnf0~O4f2q1Uc8fhmjC2~w4hur0T97Os6BUkf5RK6z-4~b4bi6Oqx3aK1RCbU6T1FaualqZoUuZltM6ScqIl2OJ5m-6ZBWIIzaTk2sfcDKfWNX4F2KcR6LA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                        'Mongolia has several hospitals and medical facilities, including emergency hospitals, that provide medical services to residents and travelers. While this isn`t an exhaustive list of emergency hospitals existing in Mongolia, here are some of the best and specialized hospitals in Ulaanbaatar, the capital city of Mongolia, which often serve as the primary facilities for emergency medical care, working with international travel insurance companies:'),
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
                                '7701-1111',
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
                                  'Chinggis ave-41, Khan-uul district-15, Ulaanbaatar.',
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
                                  child: Text('www.intermed.mn'))
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
                                  'Monday – Friday: 0830 – 1700  Saturday: 0900 – 1600,Sunday (limited out-patient services): 0900-1400.',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                              'One of the largest and most well-equipped private hospitals in Mongolia. Located at the south of the city, it offers a wide range of medical services, including emergency care, pediatric care, cardiovascular care, surgeries, lavatories and radiology, and has a dedicated service to foreigners with part of the staff understanding English.')
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
