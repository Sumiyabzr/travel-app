import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/components/card_horizantiol.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class SeeAllCommPage extends StatefulWidget {
  const SeeAllCommPage({super.key});

  @override
  State<SeeAllCommPage> createState() => _SeeAllCommPageState();
}

class _SeeAllCommPageState extends State<SeeAllCommPage> {
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
                      provider.commProduct[provider.categoryIndex].length,
                      (index) => Card_horizantiol(index, "")),
                )),
          ),
        );
      },
    );
  }
}
