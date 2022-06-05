import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:adventure_care/colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.backgroundLight,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: ColorPalette.dark,
          width: 5,
        ),
      ),
      child: FAProgressBar(
        currentValue: 80,
        displayText: '%',
        size: 35,
        progressColor: ColorPalette.green,
        backgroundColor: ColorPalette.peach,
        border: Border.all(
          color: ColorPalette.peach,
          width: 2,
        ),
      ),
    );
  }
}
