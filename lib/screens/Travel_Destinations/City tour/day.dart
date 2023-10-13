import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DayScreen extends StatefulWidget {
  const DayScreen({super.key});

  @override
  State<DayScreen> createState() => _DayScreenState();
}

class _DayScreenState extends State<DayScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/3f7d/168b/1a0213baabd280270374da399d1f8602?Expires=1698019200&Signature=I~YKdAdsoypD7~DxjiQm0QPP1RYvleWM-HXSgGcUp8L3edwbIM6~aQk6aiKIH57zrZG1hDg2BkuHvG9APUw9zVXBuUEEMvyxMgmOCpxLT-pP4BlioBXoRcdTJareoAPWh50LH8vXynIGQa6pnRhyhwmhTRLBy5uPXuND1bhu~QY18u4paEETmGRIlaIB1wXDycxiyEHSOnRxsdBdJTMtKXfFWqDBG4NgaHfje7Zh450~9X1ql52mZKlp508DtMVROLCBjDB6F~vBBaf5sPWcZPY8Lsjp6PDeSdvkZ2r1P12THcS7xYmiaFWDIAX-FOxrm1z-GYxnRSixZU~PVqJdsw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'))),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 25,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: size.width,
                        height: size.height * 0.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1. Sukhbaatar Square',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Our city tour starts from the very center of our capital, the sukhbaatar square. It is surrounded by many historic buildings and statues.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 185,
                  width: size.width,
                  child: PageView.builder(
                      controller: _controller,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      itemCount: 2,
                      itemBuilder: (context, index) => Container(
                            width: size.width,
                            height: 250,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/bef7/7116/4a90115eff61b18b1932386f3d25ec9e?Expires=1698019200&Signature=EDPNKSwW79UrEa50pTHVECzyoX8-kTnv1XNHx79yYG0pnz1zreEEir-b2Cvj8sWZX4gV3W4ANqx44QTDaurYm-rkp2t-czNmmoq7bwRBJ6T1l9gUgAx1uDZ3S13tcgMeiFT4~o4BqAr06tVTZSSpZQrcDVClBt37zTLbhIkWWJuyKe9cKeG7HSwaBJVJvGtUZAmNQtmuTm0~CMZCKmrgDnpoFjNgXs3uiS5cBpjliYAqouxBGP5R4pFPzrKjm3p-umv0OhGbiRENsCRmIXkTJrERgBodUJso5N2q7nGyHc5h4Azoa1D8a~~oJzlLYqIRZQSrXmWqxW74q6jUH8wUBA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                    fit: BoxFit.cover)),
                          )),
                ),
                SizedBox(
                  width: size.width,
                  height: 175,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: WormEffect(
                          activeDotColor: Colors.red,
                          dotColor: Color.fromARGB(255, 109, 109, 109),
                          dotHeight: 8,
                          dotWidth: 8),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
