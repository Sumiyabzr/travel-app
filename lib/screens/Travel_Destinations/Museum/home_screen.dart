import 'package:flutter/material.dart';

class Museum extends StatefulWidget {
  const Museum({super.key});

  @override
  State<Museum> createState() => _MuseumState();
}

class _MuseumState extends State<Museum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Museums',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Must See',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/c484/e398/1746f1adc7a31fa3baa797c63de71e0d?Expires=1698019200&Signature=CgMGSEwIAx4Moh07nrPLpdU-ONwiJQO1CxZ5yZfe94SlU0XLYJ8Kxq-49TyKJuNQTwA-Xut~8Vh9NI-CRHeuCFo5bsLfhT3KPDF5dKki8pmojKgLYHUlSvSEvyCywnjKT7urMwMld4rmZj9hYhNvpLZdVxFqrfdJ~J--w68BRwBdAmsocpGXw-9F0JpwFEZEmRnWCrDYile7Bj2vPOr2IRnH5GF88ixaYKSmyGHPn1VLN1ZwvI3b8UvLUp~FSH4IXC2GytnGHNAIdytLRVWQbSCH2YcgO5AkFGuNAiCTr~0kha3pnxBwQt51pzWyADvgwZhTxBU5TzADSUP87EHTYQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high)),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'National Museum of Mongolia',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/8ab7/1c10/05013d2d0e5023fad1cc6fc6088980ef?Expires=1698019200&Signature=ZdMMHsHuT8nsRh5LmvX6n94EzTMR~nxbu58hPk2vwimZNH8qdhslTO-o4h6lVLEDVupgvLV5rU7xJe0ZrPnU0j1DCBTbBoEVLI2a6ZUa5clf4ZEUWRa6C7N~tcZg5rh2Cr7hcSScBqKn209vqQkNiXgHv9ONXXJHNwRdw7pWBPJ9XOtjZPJyaPriSDU5gCI5c1Q01nvvGOct6o~GJHi-qQZW2hNeIwEqhxxUr92Al18qQNc5p6eFsmIv-QsVdS5oDBphlsl313fXoEIcJorYHM91epsMQo7QC08Ta12ImwEMCRtNwqX7sBbGt44xKB8MPwMSiM57Wqx9tVGKw5e4Cg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high)),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'National Museum of Mongolia',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
