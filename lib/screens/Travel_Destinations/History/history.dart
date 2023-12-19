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
          centerTitle: true,
          title: Text(
            'History of Ulaanbaatar',
            style: TextStyle(color: Colors.black),
          ),
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
                        // Text(
                        //   'History of Ulaanbaatar',
                        //   style: TextStyle(
                        //       fontSize: 25, fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 15,
                        // ),
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
                        'http://202.179.6.26:8000/asset/Other/history1.jpg'),
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
                        'http://202.179.6.26:8000/asset/Other/history2.jpg'),
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
                        'http://202.179.6.26:8000/asset/Other/history3.jpg'),
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
      ),
    );
  }
}
