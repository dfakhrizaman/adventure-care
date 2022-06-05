import 'package:adventure_care/widgets/task_tile.dart';
import 'package:adventure_care/widgets/texts.dart';
import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

List<String> tasks = [
  'Makan nasi',
  'Minum obat',
  'main bola',
];

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              const HeaderText1(content: 'Kegiatan Hari Ini'),
              ListView(
                shrinkWrap: true,
                children: tasks.map((item) => TaskTile(title: item)).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
