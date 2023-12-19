import 'package:flutter/material.dart';

class ByAir extends StatefulWidget {
  const ByAir({super.key});

  @override
  State<ByAir> createState() => _ByAirState();
}

class _ByAirState extends State<ByAir> {
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
                          'https://s3-alpha-sig.figma.com/img/a070/a5da/5b17b903897355daa6632b98c38d2492?Expires=1699833600&Signature=oPxT7~Gz83HxROzG9oUme8rkAsUf-vmwX3q-quI7BlldBBo7VU~Yw71LJlsNGHx9pwZOEwI9owYR704KeekWMTzeftxqGyxQk1A63i~jhzP5izzcZkCNlAl6DDk85wSkusC7W9QE7BKhmWwL0eGh3B-TpFHt6HWZrdildjNWBJv3GSc1JSmtKo5gAU13s8joCdYoXxKhSE-Cl2AoMs0erPOOCZjFEoljWA-Ps0RUtZkHt8R5fRp3zJOYh6f8G9PSMJl-PW3pV0xAkux-AgLvLWTjWSVUev2hclCvJikuXWbipr~Cz0wYhPnr6lSglIPfD2tx~lny-yhWFbOmhPGzAg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
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
                        'Definitely the most common way to reach Mongolia is by air. Chinggis Khaan International Airport (ULN) located outside of the Capital city Ulaanbaatar is the primary international gateway to the country. Multiple airlines offer direct and connecting flights to Mongolia from major cities worldwide. '),
                    SizedBox(height: 10),
                    Text(
                        'Coming from Asia, the common departure points include Beijing (China), Seoul (South Korea), Tokyo (Japan), Hong Kong, and Bangkok (Thailand).'),
                    SizedBox(height: 10),
                    Text(
                        'From many countries in Europe, many companies transit their flights to Moscow (Russia) and Istanbul (Turkey) before reaching Mongolia. If your point of departure is located in North America, you shall have more connecting flights, coming from cities including New York, Los Angeles, and San Francisco. Common layover cities include Beijing and Seoul.'),
                    SizedBox(height: 10),
                    Text(
                        'Cities from the Middle East also connect with Ulaanbaatar, from Dubai (United Arab Emirates) and Doha (Qatar).'),
                    SizedBox(height: 10),
                    Text(
                        'Please keep in mind flight availability and routes may change over time, and it is always recommended to check with airlines and travel agencies for the most up-to-date information on international flights to Mongolia. When planning your trip, consider the most convenient and cost-effective routes based on your departure location and any stopovers you may be willing to make. Likewise, the main traveling season to Mongolia is during the summer months of June to  the beginning of September, and so the prices may see an increase at this period of the year.'),
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
