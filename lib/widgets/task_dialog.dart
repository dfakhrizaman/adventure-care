import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/buttons.dart';
import 'package:adventure_care/widgets/streak_dialog.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TaskDialog extends StatelessWidget {
  const TaskDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      height: 54.h,
      width: 90.w,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: ColorPalette.backgroundLight,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ColorPalette.dark,
          width: 5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 69,
                  height: 56,
                  color: ColorPalette.peachDark,
                ),
              ),
              const HeaderText2(content: 'Konsumsi Insulin'),
              HeaderText3(
                content: 'Ambil Insulin Basalbolus',
                color: ColorPalette.grey,
              ),
              const DialogSpacing(),

              //* Deadline Datetime
              HeaderText3(
                content: 'April 20 2021, 10:00',
                color: ColorPalette.orange,
              ),
              const DialogSpacing(),
              HeaderText4(
                content: '"Kejujuran selalu membawa kepada kebaikan."',
                color: ColorPalette.grey,
                alignment: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: ButtonLarge2(
                    text: 'Belum',
                    onPress: () {
                      Get.back();
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ButtonLarge2(
                    text: 'Selesai',
                    buttonColor: ColorPalette.green,
                    onPress: () {
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const StreakDialog();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DialogSpacing extends StatelessWidget {
  const DialogSpacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 30);
  }
}
