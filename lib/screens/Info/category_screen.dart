import 'package:flutter/material.dart';

class CategoryInfo extends StatefulWidget {
  const CategoryInfo({super.key});

  @override
  State<CategoryInfo> createState() => _CategoryInfoState();
}

class _CategoryInfoState extends State<CategoryInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
          children: List.generate(9, (index) {
        if (index == 0 || index == 7) {
          return Container(
            height: 150,
            width: size.width - 30,
            color: Colors.blue,
          );
        } else {
          return Row(
            children: [
              Container(
                width: (size.width - 15) / 7,
                height: (size.width - 15) / 7,
                color: Colors.amberAccent,
              ),
            ],
          );
        }
      })),
    ));
  }
}
