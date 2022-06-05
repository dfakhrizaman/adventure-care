import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StreakDialog extends StatelessWidget {
  const StreakDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: contentBox(context),
      ),
    );
  }
}

contentBox(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fireplace_sharp,
          color: ColorPalette.orange,
          size: 100,
        ),
        HeaderText2(
          content: 'Anda mendapat',
          color: ColorPalette.white,
        ),
        HeaderText2(
          content: '1 Streak',
          color: ColorPalette.orange,
        ),
        BodyText(
          content: 'Perbanyak Streak untuk \nmendapatkan lebih banyak hadiah!',
          alignment: TextAlign.center,
          color: ColorPalette.white,
        ),
      ],
    ),
  );
}
