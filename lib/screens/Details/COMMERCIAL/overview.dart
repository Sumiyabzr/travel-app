import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class CommOverview extends StatefulWidget {
  final String data;
  const CommOverview(this.data, {super.key});

  @override
  State<CommOverview> createState() => _CommOverviewState();
}

class _CommOverviewState extends State<CommOverview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: HexColor('#E8EFFF'),
                      ),
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
                                    borderRadius: BorderRadius.circular(4),
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
                                        [provider.productIndex]['Phonenumber'],
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.copy,
                                  color: Colors.blue,
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
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  width: size.width * 0.1,
                                  height: size.width * 0.1,
                                  child: Icon(
                                    Icons.mail_outline_outlined,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  // child: Text(
                                  //   provider.getProducts(
                                  //           widget.data)![provider.categoryIndex]
                                  //       [provider.productIndex]['Phonenumber'],
                                  // ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.copy,
                                  color: Colors.blue,
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
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  width: size.width * 0.1,
                                  height: size.width * 0.1,
                                  child: Icon(
                                    Icons.sports_basketball_outlined,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    provider.getProducts(widget.data)![
                                            provider.categoryIndex]
                                        [provider.productIndex]['link'],
                                  ),
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
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  width: size.width * 0.1,
                                  height: size.width * 0.1,
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.blue.shade500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  // child: Text(
                                  //   provider.getProducts(
                                  //           widget.data)![provider.categoryIndex]
                                  //       [provider.productIndex]['Phonenumber'],
                                  // ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              provider.getProducts(
                                      widget.data)![provider.categoryIndex]
                                  [provider.productIndex]['description'],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: size.width,
                          height: size.width * 0.5,
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/d02d/bf1f/595ffaf88713bd7173311d961077e0fe?Expires=1704067200&Signature=ZR55-QHcGR7I6Lp7HWS0jSTMFwJbhZMA6uzWT9LsCNozXB-EiGrxnpC2kQU9H0FvH-lysxYWeEEHxjdAax4jpkOdRsIyfxKjThFRPh-qzIzJd7ixlLaqo8UtrQUw3gB8GLK~wUCHyeo916nWvoLGWVB8FZRsSiDtWnFsF8QE~9lstaoiqv6rdNXN4md05Aji4lVE7d-hmESTF383WR3~W1VIfgTlmTLyKxkohRrjeBehVd7Ah65uEjiJPvX4WZ3EL6Cw-NxB32oNcyf-3IcZeiD2mnFV2ohwZKZnZQK-ddnlTPrMH~U9Bjt-SuV3hgPdZ9k3GAnrNl9Z0kPTQJX3zQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/3244/5b22/3d2b266a479af08d38f786f1b2211149?Expires=1704067200&Signature=HUc3OJjs3iWrxvLr9hQFi6C4T9GjYWs4pzVywn3RxwrVhhBATM-gsLANTL5DM-qRXsrQ~tdMlFRBqBDZwm2Bf3v2r0hkUfPZhQ6rsWGc4qndhimS4DFGeSNZOxps-wue6833lN04kzbBJLg4Gu85rEXzKjNYfcVFHAmDXBcB5i1-nYaDqYPWvJLAjA5lizGLlZqulCIfKw3VohbBt13x25VCcioyfRoDfibBArgF-Vg96ujfTA55Hk32tv2ecqngBvCZMnSPOe0DmTrryNEuTGFpF0r7q2W5FV3F5pEFwgBlTQhF6X-lJ546RMNWEtGMNXK-I1deFU8R0Ha-uCC0vg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.45,
                              height: size.width * 0.45,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/c797/66b2/3cb15cd6fc598bf0c960ded02b62867f?Expires=1704067200&Signature=k~a3zzVqXto2jjl7IXP74JaKnVHpYHJvk7pMeJIon7y0GhG7yVTpYYVxCTnyjuPhXsFS6TZvLTqVbslFAe69su7Kw5YknroKuQyRI6Z182fKuypN4NmZU9NQ2rk9ySaASrMnhZG4WuwigKUxcfpJKvQ7lRWjfqMjbVSom3dAR38YQZvxXQUyAcBDyuoEsVNYu7uS1l5pH8eIfh0BIc-u8MdwghLeFpRmjtmrCGBlg4vi34c92dVdorw1SVNXfJ-~ZMJO~YOrCAPAR08pQ2zG6MgtYouLZD9FZ1FwUlJLz0Jwj25Xii25msOPzGExkzs9MXDWN7FZJKgkqVk~HSiz3Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.45,
                              height: size.width * 0.45,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/44c2/dd73/4ca57cd3e4dd04ff7e329dd71506d624?Expires=1704067200&Signature=aBZ2r5QFZ0ECMePS0~8bnWAP0LMVwuHCRQN-L-A4t~a45-X--HTvpDmAlkqHHnNXhSzN-oBljHIVne5BQ6dmQm7vcaLGDDbCasC6kFIjaOB77mhdMuU01py5WPprbQr211j62YGX~h4zpHSIdgKPEItygjhzFA7XXjnTsqW0CF8ikz5Odwxgo1rigxqLb3CAnTVG7O2JIyLb2RDVuEOa826ot-VxsG5kyp2vNd3Gk6EFKtxZdBPLfUesy8ROFqn6~1s6sdcNpesVMB~8AN4HgilvC-WXxj1~9qmbYrCeo4iEeCTEIqoqn2yq6ZqDCdEvx~qXbvvyAuNseS10hNFLIw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.45,
                              height: size.width * 0.45,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/54a4/b234/27caef487f6e6643585149a7370fc3fc?Expires=1704067200&Signature=Lft138HD1eKG~HWPCkzotNf8rvPeQieubLXV5C1mFFBWxaN2VEe6G8Dd7zdpne7NUCPZSBkRddv5A4pfHfPYk9zVhLzR01v1B5f39pvhm79VOgCJoeUMo2D7~WKzQXK2JJu4SZHwWAAVc4ogfBN6WSwTgRFpwJt9bB-GODp1MC9HpNXRTYNVxhSgwrIDjwjA6TnA2V4YUb-tT3Jjp3PnKVlPDxoYY1LTgEg3iZO7rs97nRS9DyXWeEnCAO-HkZSdz7M16UMPMyudTZl3u2ciZuzwKECY2NT0tmcW2touh8BFRQnUfhxtcZpzqb4W4ASz1QBgpESCXvkZPbwjcUNcPQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                      fit: BoxFit.cover)),
                              width: size.width * 0.45,
                              height: size.width * 0.45,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
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
