import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PlaceToVisit extends StatefulWidget {
  const PlaceToVisit({super.key});

  @override
  State<PlaceToVisit> createState() => _PlaceToVisitState();
}

class _PlaceToVisitState extends State<PlaceToVisit> {
  // List data = [
  //   [
  //     "Sukhbaatar square",
  //     "The very center of Mongolian capital city, Central square where Mongolians declared independence in 1921. The square was built and named after revolutionary hero Damdin Sukhbaatar in 1951.",
  //     "http://202.179.6.26:8000/asset/S.jpg",
  //     "http://202.179.6.26:8000/asset/SukhbaatarSquare (1 of 8).jpg",
  //     "http://202.179.6.26:8000/asset/SukhbaatarSquare (2 of 8).jpg",
  //     "http://202.179.6.26:8000/asset/SukhbaatarSquare (3 of 8).jpg"
  //   ],
  //   [
  //     "Morning street",
  //     "500m away from the central square, there is a beautiful street with colorful buildings, many kinds of cafes and coffee shops. People love to have breakfast there, on the way to their work. Businesses in this area start early in the morning. That`s why it`s called morning street.",
  //     "https://s3-alpha-sig.figma.com/img/93c5/5521/8c066db47598e391b815d72dd77d1471?Expires=1700438400&Signature=OwpoICkq1FZxfgucBpounKQsTmSKKWOQaqGKLnL24rTaYsTxPMqUAYbX7xSR467eGYD9PRaOJufNR8ZnKHYSLu1wBXJWG2~jZXEMCOfRkpcnh9HKDswXAvBDNtCJO7218J1ifNoJx8i9kyFfpGoWqgsS9FYoZnwRkUZ9-oxTuweCOv7VAL3VT~NohGN~YIv25pNvitsIlNwJ5ivU7YeBANVH25U4zYaFR2XZaoMbpWfidTK7JLD~rRrn2W-1eKGARNWIh7BSB7eT7CR0l7N1m7quzwCm-QdkyfTnINNpBI96aOINPLRLSSJzJMVJl0~RoiR9XbWCiUfactk1sDUiRw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/93c5/5521/8c066db47598e391b815d72dd77d1471?Expires=1700438400&Signature=OwpoICkq1FZxfgucBpounKQsTmSKKWOQaqGKLnL24rTaYsTxPMqUAYbX7xSR467eGYD9PRaOJufNR8ZnKHYSLu1wBXJWG2~jZXEMCOfRkpcnh9HKDswXAvBDNtCJO7218J1ifNoJx8i9kyFfpGoWqgsS9FYoZnwRkUZ9-oxTuweCOv7VAL3VT~NohGN~YIv25pNvitsIlNwJ5ivU7YeBANVH25U4zYaFR2XZaoMbpWfidTK7JLD~rRrn2W-1eKGARNWIh7BSB7eT7CR0l7N1m7quzwCm-QdkyfTnINNpBI96aOINPLRLSSJzJMVJl0~RoiR9XbWCiUfactk1sDUiRw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/93c5/5521/8c066db47598e391b815d72dd77d1471?Expires=1700438400&Signature=OwpoICkq1FZxfgucBpounKQsTmSKKWOQaqGKLnL24rTaYsTxPMqUAYbX7xSR467eGYD9PRaOJufNR8ZnKHYSLu1wBXJWG2~jZXEMCOfRkpcnh9HKDswXAvBDNtCJO7218J1ifNoJx8i9kyFfpGoWqgsS9FYoZnwRkUZ9-oxTuweCOv7VAL3VT~NohGN~YIv25pNvitsIlNwJ5ivU7YeBANVH25U4zYaFR2XZaoMbpWfidTK7JLD~rRrn2W-1eKGARNWIh7BSB7eT7CR0l7N1m7quzwCm-QdkyfTnINNpBI96aOINPLRLSSJzJMVJl0~RoiR9XbWCiUfactk1sDUiRw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/93c5/5521/8c066db47598e391b815d72dd77d1471?Expires=1700438400&Signature=OwpoICkq1FZxfgucBpounKQsTmSKKWOQaqGKLnL24rTaYsTxPMqUAYbX7xSR467eGYD9PRaOJufNR8ZnKHYSLu1wBXJWG2~jZXEMCOfRkpcnh9HKDswXAvBDNtCJO7218J1ifNoJx8i9kyFfpGoWqgsS9FYoZnwRkUZ9-oxTuweCOv7VAL3VT~NohGN~YIv25pNvitsIlNwJ5ivU7YeBANVH25U4zYaFR2XZaoMbpWfidTK7JLD~rRrn2W-1eKGARNWIh7BSB7eT7CR0l7N1m7quzwCm-QdkyfTnINNpBI96aOINPLRLSSJzJMVJl0~RoiR9XbWCiUfactk1sDUiRw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //   ],
  //   [
  //     "Park",
  //     "Citizens of the capital love to spend their free time in the park during the warm seasons. You can find roller coasters, huge floating boats, bowling clubs and much more activities there.",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //   ],
  //   [
  //     "Night street food",
  //     "This are is called Huuhdiin 100, where people can visit many kinds of street food, restaurants, night clubs, lounges and pubs. In the late night, there are street food lounges, and food trucks. This place never sleep in the summer.",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //   ],
  //   [
  //     "National garden",
  //     "South-east of the city, there is a huge garden with cycling and jogging road, football and basketball square. In the morning, people go there for practice and exercise, meanwhile young people date and hangout in the evening. Also there are street foods, pool for children, many games and other activities.",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //   ],
  //   [
  //     "Narantuul black market",
  //     "Biggest and cheapest market in the capital city. Where average people go there to buy clothes, tools and food.Also many businesses provide their supplies from here. Beware of pickpocket.",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //     "https://s3-alpha-sig.figma.com/img/cdf2/303d/42272f0247eb5a2e7d38104b44c3272c?Expires=1700438400&Signature=WeXrIZbgMCBXRFz3tExJKAQSjSq1VdLnNMznTSv2nLxOOcjwtWTk6L~mthNWfUoZ3gyavLA7Z0cKuHg-7h1-cJV1bnR-7FCqCmvdNq2rmyt2LGESi-t3vzY0Lv2iW~RyNLM0pPQ~3IMZb905QjKTRXu29-v7vTG3S2-I1a14e~upjVt8LAehi-u-rCMJ4ZK2v-457Bgpj7arUB~XHd8bEktVeepUShDCimW6d8NfaOdILOAQAZXKbSD1gziSxvz3p7FFYSq5asV2SwPfCgLXhHJ7r65qNEnuW2BxrrT8deC87mCQCk2dHGbfLxwLYiyNjZ0khA0wYV3hjnut7M0rDw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  //   ]
  // ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Place to visit', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: () => Navigator.pop(context), 
        icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25,)),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(),
      ),
    );
    // Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text(
    //       'Place to visit',
    //       style: TextStyle(color: Colors.black, fontSize: 16),
    //     ),
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     leading: IconButton(
    //         onPressed: () => Navigator.pop(context),
    //         icon: Icon(
    //           Icons.arrow_back_rounded,
    //           color: Colors.black,
    //           size: 28,
    //         )),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: BouncingScrollPhysics(),
    //     child: Column(
    //       children: List.generate(
    //         data.length,
    //         (index) {
    //           return Column(
    //             children: [
    //               Padding(
    //                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //                 child: Column(
    //                   children: [
    //                     Row(
    //                       children: [
    //                         Icon(
    //                           Icons.location_on_sharp,
    //                           size: 30,
    //                           color: HexColor('#7FBFF2'),
    //                         ),
    //                         SizedBox(
    //                           width: 10,
    //                         ),
    //                         Text(
    //                           data[index][0],
    //                           style: TextStyle(
    //                               fontSize: 20, fontWeight: FontWeight.bold),
    //                         )
    //                       ],
    //                     ),
    //                     Text(
    //                       data[index][1],
    //                       textAlign: TextAlign.justify,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 height: 250,
    //                 child: ListView(
    //                   scrollDirection: Axis.horizontal,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         width: size.width * 0.9,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(20),
    //                             image: DecorationImage(
    //                                 image: NetworkImage(data[index][2]),
    //                                 fit: BoxFit.cover,
    //                                 filterQuality: FilterQuality.high)),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         width: size.width * 0.9,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(20),
    //                             image: DecorationImage(
    //                                 image: NetworkImage(data[index][3]),
    //                                 fit: BoxFit.cover,
    //                                 filterQuality: FilterQuality.high)),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         width: size.width * 0.9,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(20),
    //                             image: DecorationImage(
    //                                 image: NetworkImage(data[index][4]),
    //                                 fit: BoxFit.cover,
    //                                 filterQuality: FilterQuality.high)),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         width: size.width * 0.9,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(20),
    //                             image: DecorationImage(
    //                                 image: NetworkImage(data[index][5]),
    //                                 fit: BoxFit.cover,
    //                                 filterQuality: FilterQuality.high)),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           );
    //         },
    //       ),
    //     ),
    //   ),
    // );
  }
}
