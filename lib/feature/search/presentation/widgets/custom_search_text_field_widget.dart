import 'package:flutter/material.dart';

import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class CustomSearchTextFieldWidget extends StatelessWidget {
  const CustomSearchTextFieldWidget({super.key, this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.setHeight(56),
      width: AppSize.setWidth(303),
      child: TextField(
        cursorColor: Colors.white,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: AppSize.setWidth(23),
          ),
          hintText: AppString.searchDeepIntoTheHistory,
          hintStyle: AppStyle.poppinsw400wAnd14sizemidBrown
              .copyWith(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.setWidth(8)),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColor.lightBrown,
          filled: true,
        ),
      ),
    );
  }
}
