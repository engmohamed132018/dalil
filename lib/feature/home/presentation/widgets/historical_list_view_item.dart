import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_style.dart';
import '../functions/custome_hostricalitem_boxdecoration.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem(
      {super.key, required this.txt, required this.imagePath});
  final String txt;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppConst.characterviewRoute,
            arguments: DataModel(title: txt, imgPath: imagePath));
      },
      child: Container(
        margin: EdgeInsets.only(right: AppSize.setWidth(16)),
        decoration: customeHIstoricalPerioditemDesign(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildImage(),
            customSizedBoxFromHieght(11),
            _buildText(),
          ],
        ),
      ),
    );
  }

//!build text
  Text _buildText() {
    return Text(
      txt,
      style: AppStyle.poppins500wAnd14sizeDeepBrown,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
//!build image

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(5), topEnd: Radius.circular(5)),
      child: Image.asset(
        imagePath,
        height: AppSize.setHeight(96),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
