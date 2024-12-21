import 'package:flutter/material.dart';

import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_style.dart';

class SearchLIstViewItem extends StatelessWidget {
  const SearchLIstViewItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.setWidth(65),
      height: AppSize.setHeight(24),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.setWidth(5)),
        ),
        color: Colors.white,
        child: Text(
          text,
          style: AppStyle.poppinsw400wAnd10sizeMidBrown,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ),
    );
  }
}
