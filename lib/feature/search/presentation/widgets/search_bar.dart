import 'package:dalil/feature/search/presentation/widgets/custom_back_icon.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field_widget.dart';

class SeaechRowWidget extends StatelessWidget {
  const SeaechRowWidget({super.key, this.onChanged});
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackIcon(),
        CustomSearchTextFieldWidget(
          onChanged: onChanged,
        )
      ],
    );
  }
}
