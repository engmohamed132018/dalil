import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

import '../../data/model/historical_carachter_model.dart';
import 'historical_list_view_item.dart';

class CustomListViewWidget extends StatelessWidget {
  const CustomListViewWidget({super.key, required this.list});
  final List<DataModel> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.setHeight(135),
      child: ListView.builder(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListViewItem(
              txt: list[index].title, imagePath: list[index].imgPath);
        },
      ),
    );
  }
}
