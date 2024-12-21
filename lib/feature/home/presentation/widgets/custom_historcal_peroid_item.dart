import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_style.dart';
import '../functions/custome_hostricalitem_boxdecoration.dart';

class CustomHomeHistoricalPeriodItem extends StatelessWidget {
  const CustomHomeHistoricalPeriodItem(
      {super.key, required this.text, required this.imagePath});
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppConst.homeDetailsViewRoute,
            arguments: DataModel(title: text, imgPath: imagePath));
      },
      child: Container(
        width: AppSize.setWidth(164),
        height: AppSize.setHeight(96),
        decoration: customeHIstoricalPerioditemDesign(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: AppSize.setWidth(96),
              height: AppSize.setHeight(48),
              child: Text(
                text,
                style: AppStyle.poppins500wAnd18sizeWhite
                    .copyWith(fontSize: 16, color: AppColor.deepBrown),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: AppSize.setWidth(47),
              height: AppSize.setHeight(64),
              child: Image.asset(
                imagePath,
                width: AppSize.setWidth(47),
                height: AppSize.setHeight(64),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
