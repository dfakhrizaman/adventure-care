import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/buttons.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 2.5.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeaderText1(content: 'Mystery Box'),
                Icon(
                  Icons.all_inbox_outlined,
                  size: 250,
                  color: ColorPalette.green,
                ),
                const BuyButton(),
              ],
            ),
          ),

          //* Possible Rewards
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText4(content: 'Mystery Box dapat berisi:'),
              Row(
                children: List.generate(text.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                      color: ColorPalette.green,
                      width: 38,
                      height: 48,
                      child: Text(
                        text[index].toString(),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28.w,
      child: ButtonCustom(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.attach_money),
            HeaderText2(content: '450'),
          ],
        ),
        buttonColor: ColorPalette.white,
        onPress: () {},
      ),
    );
  }
}
