import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/components/card_horizantiol.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import '../../global_keys.dart';

class SeeAllDestinations extends StatefulWidget {
  const SeeAllDestinations({super.key});

  @override
  State<SeeAllDestinations> createState() => _SeeAllDestinationsState();
}

class _SeeAllDestinationsState extends State<SeeAllDestinations> {
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
                      provider.products[provider.categoryIndex].length,
                      (index) => Card_horizantiol(index, false)),
                )),
          ),
        );
      },
    );
  }
}
