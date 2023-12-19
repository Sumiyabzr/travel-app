import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class AccOverview extends StatefulWidget {
  final String data;
  const AccOverview(this.data, {super.key});

  @override
  State<AccOverview> createState() => _AccOverviewState();
}

class _AccOverviewState extends State<AccOverview> {
  @override
  Widget build(BuildContext context) {
    PageController _controller_ = PageController();
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: HexColor(
                            '#E8EFFF',
                          ),
                        ),
                        width: size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      ),
                                      color: Colors.white,
                                    ),
                                    width: size.width * 0.1,
                                    height: size.width * 0.1,
                                    child: Icon(
                                      Icons.phone_outlined,
                                      color: Colors.blue.shade500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      provider.getProducts(widget.data)![
                                                      provider.categoryIndex]
                                                  [provider.productIndex]
                                              [provider.subProductIndex]
                                          ['Phonenumber'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.copy,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      ),
                                      color: Colors.white,
                                    ),
                                    width: size.width * 0.1,
                                    height: size.width * 0.1,
                                    child: Icon(
                                      Icons.mail_outline_rounded,
                                      color: Colors.blue.shade500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      provider.getProducts(widget.data)![
                                                  provider.categoryIndex]
                                              [provider.productIndex]
                                          [provider.subProductIndex]['Email'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.copy,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      ),
                                      color: Colors.white,
                                    ),
                                    width: size.width * 0.1,
                                    height: size.width * 0.1,
                                    child: Icon(
                                      Icons.facebook,
                                      color: Colors.blue.shade500,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        provider.getProducts(widget.data)![
                                                        provider.categoryIndex]
                                                    [provider.productIndex]
                                                [provider.subProductIndex]
                                            ['Facebook'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                provider.getProducts(widget.data)![provider
                                        .categoryIndex][provider.productIndex]
                                    [provider.subProductIndex]['description'],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '1.5 Km Southwest of Kharkhorin Soum in Uvurkhangai Aimag On the Orkhon River.',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://s3-alpha-sig.figma.com/img/779a/0d07/16bc0c8e39e8f500c648b197b37d90f5?Expires=1703462400&Signature=LJsHbyV9Wu8fLsNS5MQCmH4Ir~qA0FwBI6kZWCshp4HWvKzjjib~Y7LsWiY78WjFKlrSi~bFBIP3Bbz7gBfi7wyTqO3ManWJXtHttPFDNOf8b8Th9Qg-4YeOG~adIvcZifA-ws-~rSsUaHPnoUOyEwBGPeqeBSur0uPHFzBULSXnnPhKub52quHxomYNOF8yI-H6QgHTOM1O4FEZ2qOrhh4mOyMUgbNZIJ~cKvyL1C9W0AFfWFEEFcRyNyLC-uOTQ1pyuu8ToHBfFqkVkkyTIGS7hHFczeCEmKjX1MuvCttihSGm1P842cA4B3cavX9G~C1P0GiX1fhG13yNO4xdaw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width,
                              height: size.width * 0.5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Services',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: size.width * 0.9,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                        itemCount: provider
                            .getProducts(widget.data)![provider.categoryIndex]
                                [provider.productIndex]
                                [provider.subProductIndex]['photo1']
                            .length,
                        controller: _controller_,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                // color: color[index],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.network(
                                "http://202.179.6.26:8000/asset/" +
                                    provider.getProducts(widget.data)![
                                                    provider.categoryIndex]
                                                [provider.productIndex]
                                            [provider.subProductIndex]['photo1']
                                        [index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: size.width * 0.82,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller_,
                        count: provider
                            .getProducts(widget.data)![provider.categoryIndex]
                                [provider.productIndex]
                                [provider.subProductIndex]['photo1']
                            .length,
                        effect: ScrollingDotsEffect(
                            activeDotScale: 1,
                            activeStrokeWidth: 1,
                            fixedCenter: true,
                            activeDotColor: Colors.red,
                            dotColor: Colors.grey,
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
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: HexColor('#E8EFFF')),
                      width: size.width,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/56e4/22b2/30b350fc99d1170dac78939a462cec4d?Expires=1703462400&Signature=EdewCfWCI6NYNo7qlxLpR~WU83SOaYZWU53MLy0OVifGxJxSaFEwwBPoInZO-MxubZ0ncyZyrIKKBmkII37Cd4C~IuIh58x4YnbL8nUudavLob7LsHbD1MChSTaXUXp24l173-kPXkVtadd0exiKyh-ylLox8jrCmyMoGx47Pv06wQUwMbZvtdBU3x7oz7UUYgiD~VxAgRIdBq0qX9yUe3Y77v4h8gbhn9QgSSWSYwhLJwRDTCtpvkY2BF3zXjuymKaFPNOOOI78jJhUpDlWY3mRD-zT5fx5wQMLqDR8k-LIMtj4rhZQOfR1LAHVIyqR7vzYsr2FEcWBR7UnsZTz0A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.15,
                                  height: size.width * 0.15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Yesugen Erkhem',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          ignoreGestures: true,
                                          itemSize: 15,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '7 months ago',
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  'i will highly recommended this place. you have a chance to meet Asashōryū Akinori professional sumo wrestler. He was the 68th yokozuna in the history of the sport in Japan. He was one of the most successful yokozuna ever.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://s3-alpha-sig.figma.com/img/ee2b/26d1/562b19fff25ae2d05febd5a3216b8e78?Expires=1703462400&Signature=PXbkXmiycr~IbFAwx5Ldu02rPFfPZNZ4dc76Bt1znwRgtRowfgjzZjeH68-iSaV08ro8d878UR~0el5pWBX9AjMNQG-eS1CM5Ya711uOFgZqmEZgXAtEQ-Xt8V6ZVcruUC76lqpIbCxdGCYtBTaNezI5ysUGzPkOABtV8Rbv4BYbuZU4iZ-i2f9kK83djS1CfXRZ84HM6KzKrxStHGnW6p5w6-ojAman6zcVsTWveS09TovfEYqCPrqzs5cbvlclkzxgRInVoa2DXR2MhDOtnD7GmCawVBb2paCbW0de5Spx0K7NfsjJ59gr1dULPDrzJk~kjOfWoXFpgjhwk9MRHQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      width: size.width * 0.35,
                                      height: size.width * 0.35,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://s3-alpha-sig.figma.com/img/b4ac/d423/9d2f0e0e5d585a0c957af8fcca3c8a3e?Expires=1703462400&Signature=LxX8XQt-su2HOHlqYwlCLlw4aya1DiLI552DwO1phwDYTcDMjEJJhPUJZkr~rH6RwvtV~jJbpTOpa7lp90HxxcEznzqJp1HngKQBUnouy-gWh3qdM7-e1DoscGnsxWmHKxYAgzdF6q2otFq5VKuzec7qB4uyBsqWcYp5UrZDw7RPX7PC25lIDIXj-00jL9lzqA3BlfdEjArFmdxVFfX~VIkg0YI7vwCPSSxxvz9FZbMuOiB1sfk9vxhwPf0WZqSdY~sJDCwzlxhUb73uC6RjDNW~zaxFpvSvdrZlkj2tw69pZi32RDpqAO2vaDq0ySh1CwkLUJu01dGS76E8vdB0vA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      width: size.width * 0.35,
                                      height: size.width * 0.35,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
