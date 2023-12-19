import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/NewAccommodation/data.dart';
import 'package:visitulaanbaatar/screens/NewAccommodation/model.dart';

class NewAccommodation extends StatefulWidget {
  const NewAccommodation({super.key});

  @override
  State<NewAccommodation> createState() => _NewAccommodationState();
}

class _NewAccommodationState extends State<NewAccommodation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accommodation',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              itemCount: carruselImages.length,
              itemBuilder: (context, index, realIndex) {
                final carruselImage = carruselImages[index];
                return CardImages(
                  carruselImages: carruselImages[index],
                );
              },
              options: CarouselOptions(
                height: size.width * 0.5,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 2),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Ub/City/Day 3 (1 of 1).jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Destination/Central/Erdenezuu/Erdenezuu2Z.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Destination/Southern/KhongorynEls/Photo (6 of 6).jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Nearby',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Central',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Southern',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Accommodition/Western/Altai/AltaiTavan/Acc-416.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Accommodition/Western/Khetsuu/Baruun/Acc-449.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Accommodition/Northern/Khuvsgul/Agartha/Acc-378.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.28,
                        height: size.width * 0.28,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Western',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Eastern',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.28,
                        height: size.width * 0.08,
                        child: Text(
                          'Northern',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://202.179.6.26:8000/asset/yy.png'),
                                alignment: Alignment.centerRight,
                                fit: BoxFit.contain),
                            color: Colors.black),
                        width: size.width,
                        height: size.height * 0.1,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Энд сурталчлаарай ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Сурталчилгаагаа өнөөдрөөс эхлүүл',
                                style: TextStyle(color: Colors.white),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Top Accommodations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.width * 0.45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Other/maihan_tolgoi_acc.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: size.width * 0.4,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Maikhan tolgoi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://202.179.6.26:8000/asset/Other/asaland_home.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width * 0.4,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Asa Land',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://202.179.6.26:8000/asset/Other/homescreen_acc.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: size.width * 0.4,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Chuluutiin Khavtsal resort',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final Receta carruselImages;
  const CardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {},
          child: FadeInImage(
            placeholder: NetworkImage(
                'http://202.179.6.26:8000/asset/Other/homescreen_acc.jpg'),
            image: NetworkImage(
              carruselImages.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
