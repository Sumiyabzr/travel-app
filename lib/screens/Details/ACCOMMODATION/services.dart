import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccServices extends StatefulWidget {
  const AccServices({super.key});

  @override
  State<AccServices> createState() => _AccServicesState();
}

class _AccServicesState extends State<AccServices> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor('#E8EFFF'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Colors.white,
                ),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/75a4/6e1c/b03ae631a3e0f601059e31d027741f7a?Expires=1704067200&Signature=oQOJTxkc4bw9Ebvq8yCLXyiZp7VzfUmaiM4ZfpyiCMp~hvPYuOffjIixXXwwbfoZsyK66Ci6HChueJssZ2TH-kuyESVhL6VMDN7vOqD0nufM24gukDfqPN2vUAY7DIwD75Kiy65tlxtfgKtTC8kI-iEki64vxyeyDhpylyfqX6DZMkt8U-1NvLYX2NZ4Mmz6SXphsFYNu5ZeeY0eqtSs0V3AEH9xEU6-nc1ZrGCsLJmc5XW3BBuCptDk02Ps3aXtt-D7D~kzTwDCkq-x1gaWDd~hFw6Zg4vvsGjKGZUF-IsRs7QrnC~UmuOpWcGsG6QyBzDsVZM6FnCwHPzishbSUQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width,
                        height: size.width * 0.5,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ASA GER',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '30m2 | 2 persons',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor(
                                    '#1862FF',
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '\$${50}/',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                          Text(
                            'night',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Colors.white,
                ),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/ebcf/eccc/a3f05fb5bd1cf507c78942f07784e0f4?Expires=1704067200&Signature=iRAyeU9HZesvnSgC3jkjNnG9lB3na5OIAsW~51R1VDZ43j-URN99FPT58~FopUyF5UrQmhf6j1iQYmaxpDTrvNg8OqXBahHkdhvowXz4uk5lCXI4Wst0BJHosu5hvXuTWlqxRy9dbTkgD6gdvKjJz~o0NDE-tUf3EpjeFJFeYEU1pd3rteo0TsNrVuY00YNrGZbqWL-ZPSnthd5m0ZoOZHU-bnl-BsEnAs3gQi9jTXUnKnL8U9qGwkwPiRPZtDiQ~bl5Ln7VD-PH0jFwTlH5YphIOpAxWKy6wdlqk6A97Z6vGwehYPkqgKmuWef1-HX7ASYiuUiwEWWpygjDFQ0QjQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width,
                        height: size.width * 0.5,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CHALET',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '25m2 | 2 persons',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor(
                                    '#1862FF',
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '\$${50}/',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                          Text(
                            'night',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Colors.white,
                ),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://s3-alpha-sig.figma.com/img/159a/afb4/d00ab15fb979aaf2bf0fc3886beadd98?Expires=1704067200&Signature=Hfw0K9m7CGh9IK3kpqpf~zCRXMYIAcjD0vSb3DytHHfdfNkuo4loCpAhUR3VDx~WtO1OkrBl4cjuYx8svvfOTNFtZ8WWDrffqvQajhpkEz8zZlIm-Gm0-zW7BesSgskEpkFJJf9FH0ciOtZkIQlbOGPzDebbgXuil4FAMi5EB-zVMj-TT-XSeyEbCM~VUm3rlBXu-ziZwEvEb64J9Q2yb7xtD0j~A85MnGRVCttCoRdloCSuxlcyZLE0N-JLEYR4STzvaneiWdKZYpYST-KNJGHAznXPy5kiSvaRban7KOink1QpSM1jKBdHHRd~XObLvY455HPoM05qlM1WbAA2Ow__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width,
                        height: size.width * 0.5,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUITE',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '100m2 | 2 persons',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor(
                                    '#1862FF',
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '\$${50}/',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                          Text(
                            'night',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
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
