import 'package:adventure_care/colors.dart';
import 'package:adventure_care/widgets/task_dialog.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const TaskDialog();
            },
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: ColorPalette.backgroundLight,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              color: ColorPalette.dark,
              width: 5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText3(content: title),
                  HeaderText4(
                    content: '2 jam lagi',
                    color: ColorPalette.grey,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      HeaderText3(
                        content: '100',
                        color: ColorPalette.green,
                      ),
                      Icon(
                        Icons.api,
                        color: ColorPalette.green,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      HeaderText3(
                        content: '100',
                        color: ColorPalette.yellow,
                      ),
                      Icon(
                        Icons.adjust,
                        color: ColorPalette.yellow,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
