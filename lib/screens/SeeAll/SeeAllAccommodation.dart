import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/components/card_horizantiol.dart';

import '../../provider/common.dart';

class SeeAllAccommodation extends StatefulWidget {
  const SeeAllAccommodation({super.key});

  @override
  State<SeeAllAccommodation> createState() => _SeeAllAccommodationState();
}

class _SeeAllAccommodationState extends State<SeeAllAccommodation> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  children: List.generate(
                      provider
                          .accProducts[provider.categoryIndex]
                              [provider.productIndex]
                          .length,
                      (index) => Card_horizantiol(index, "Acc")),
                )),
          ),
        );
      },
    );
  }
}
