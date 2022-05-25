import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.peach,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              HeaderText1(content: 'Shop'),
              //* Bottom Sheet
              bottomDetailsSheet(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomDetailsSheet() {
    const double minSize = 0.5;

    return DraggableScrollableSheet(
      initialChildSize: minSize,
      minChildSize: minSize,
      maxChildSize: 0.75,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: ColorPalette.backgroundLight,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            border: Border.all(
              color: ColorPalette.dark,
              width: 5,
            ),
          ),
          child: ListView(
            controller: scrollController,
            children: const [],
          ),
        );
      },
    );
  }
}
