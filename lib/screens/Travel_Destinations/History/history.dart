import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'History of Ulaanbaatar',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                            'The capital city, founded in 1639 as a ger monastery, was first located at Lake Shireet Tsagaan nuur and was intended by the Mongol nobles to be the seat of Zanabazar, the first Jebtsundamba Khutughtu. Since then, the city changed its name five times and moved twenty-eight times from one place to another until 1778. The history of the settlement of Ulaanbaatar is the first time that all the nomadic Mongolian people, not just the city, have become settled citizens.Ulaanbaatar’s history is the history of the modern Mongolian people’s struggle for freedom and independence. The history of an independent country’s political, economic, religious, and cultural center. In 1841, the history book of Ulaanbaatar was written as “Erdeniin erkh.” The origin of the city of Ulaanbaatar dates back to the 17th century and is closely related to the political situation in Mongolia.')
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/f647/4788/9ba8d8e39bbc1164840c650ac6ff3be0?Expires=1698019200&Signature=bUpvYxFYa4X9VY1hK5-Z1n~hZwkefgIZBsjyjxkyWj6rCbOW9zE1IHqcYtrOlbEhzFLlu~k-yQoPhUP4mHuto7uvnd-sCbtQS9GNwH38l99MhLlOQ0tBESL9tmR5cUjWbvuAoFQrub0htRJn2jpwv~BK48GODCY~TswqG1Ze589Cz1C51YhWAbWkGMXqhCHR3Ec9zO40lccruSw7rGBrJVB1BMVr3yCewlTz3UlCienKv2yeAMnuK9aYqtiz57boPum-9ltqikZAtTL3pbjMLJlsxlIgwmkTWgks49u~o1dL9c53gBxEypADL~37w-NypTTDSuw~-43vDiTNhHbNfg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      'The origin and development of Ulaanbaatar can be divided into the following stages. The first period was from 1639 to 1778; the city was a mobile monastery town. As mentioned above, in 1639, when Zanabazar was honored as the head of religion in Tsagaan Nuur or Shireet Nuur in Burd Sum area of present-day Ovorkhangai Province, an Urguu was established for him. Urguu is believed to be the origin of Ulaanbaatar, the capital of Mongolia today. '),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/a650/a2d1/4556455bae6b95494425926e0e2c2bc3?Expires=1698019200&Signature=mM79RylpZb06re~o61Hfq4d5S8T9FxLMNaEFaQEQgmdmOu23DV5ttbZsq6CSCPCOyZlHgU129AfqIE5B20itd-jVgdImvww9ymbVjYpEObvAJJ3owx9caBBnLk4bClUS0HOOJeLuqWHb7qF7XsO38iF1oB1T7YXnAYLEzU262wz5Hv6PTGhW9plfzrH1bHfOV8FAiM1SdhkDEMTwjrJWFjtJVUIfe-yspNGWj7UA9Fmg7-C2evOOKVM7OHZ-JAb-ogkjC0XgkGpRv72eqckdglgacxyHFfyRBwu~RW3a6A~vFSXAMGmJ11Ii5zcMD-xiMgf2ZnAsMwWe38GgqI1b4Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      'In the 19th century, Ikh Khuree became not only a religious center but also an important political, administrative, and cultural center and a central trade hub of Mongolia. It is believed that the total population of Ikh Khuree was around 15,000-20,000 at this time. Gandan, Eastern Region, Western Damnuurchin, Maimaa City, Ministry of Consular Affairs, and Dambadarjaa were included in the city of Ikh Khuree. The third period was from 1911 to 1921—when it was renamed Capital Khuree and became the capital of the re-established Mongolia. The capital has played a unique role in the life of the country. The fourth and the last period from 1921 until now. At the 14th meeting on October 29, 1924, the capital city was re-enacted, and it changed to Ulaanbaatar city. In 1954, for the first time, a 20-year general plan for the development of Ulaanbaatar was developed and implemented.In the summer of the 1990s, the first democratic elections were held in Mongolia with the participation of many parties. As a result of this election, the first permanent multi-party Parliamentary State Conference was established in Mongolia.In 1992, the new constitution of Mongolia (4th) was approved. The city of Ulaanbaatar is located in the central region of Mongolia, on the banks of Hatan Tuul, in the skirts of Khan Bogd, at 1350m above sea level, and has an area of 470,000 hectares. In terms of local administration, it is divided into nine districts and 132 communes'),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/e50d/50a6/53646792e2c5a266b16383b94597d138?Expires=1698019200&Signature=V7mJeAQGN5Og~XzwTmOih3TAAk3kFX4MnlKdq-XCjUHSWOeDwoXGCyvmIoeVA3-U4S~t4POKocFctch5lIpV5MF0PKJHuKuDh9gQREyMh2WqRRxec~z3cA2PEOXa~2NrNfsXLKFduB2A7QEaEcHF-ZeLk6gYMJgXTPh5YFxGbaJPxnOfzYY19AP76~VzLNHsIpq-Sr42qOpemJtlszSWFxyaArLYkbLCsyrBxjnfL74pUkXrekEgh9taaPCTROsQ0t2Tkf~B8w4JVcd05A0G4HuibwA~xov-ukwJxk0xqDgZaL2EEDWqB~qi8k-nlZHnw40qTkJHoGtGs2iD~h4w0Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      'The Urguu was: - the center of Mongolian Buddhism - the political center of Khalkh Mongolia - an essential hub of foreign and domestic trade. In other words, Urguu has entered a new era of development that will transform it into an actual city. The second period was from 1778 to 1910. The main feature of this period is that Urguu was settled and started to develop into a town and renamed Ikh-Khuree. In 1778, Ikh Khuree began settling in the Selby River valley, which is now the center of Ulaanbaatar. While building monasteries and temples, Mongolian artisans developed their national building techniques by mixing with traditional ger building methods, alongside using Chinese and Tibetan architectural traditions.'),
                )
              ],
            )
          ],
        ),
        // child: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 15),
        //   alignment: Alignment.topLeft,
        //   child:
        //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //     Text(
        //       'History of Ulaanbaatar',
        //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //     ),
        //     SizedBox(
        //       height: 15,
        //     ),
        //     Text(
        //         'The capital city, founded in 1639 as a ger monastery, was first located at Lake Shireet Tsagaan nuur and was intended by the Mongol nobles to be the seat of Zanabazar, the first Jebtsundamba Khutughtu. Since then, the city changed its name five times and moved twenty-eight times from one place to another until 1778. The history of the settlement of Ulaanbaatar is the first time that all the nomadic Mongolian people, not just the city, have become settled citizens.Ulaanbaatar’s history is the history of the modern Mongolian people’s struggle for freedom and independence. The history of an independent country’s political, economic, religious, and cultural center. In 1841, the history book of Ulaanbaatar was written as “Erdeniin erkh.” The origin of the city of Ulaanbaatar dates back to the 17th century and is closely related to the political situation in Mongolia.')
        //   ]),
        // ),
      ),
    );
  }
}
