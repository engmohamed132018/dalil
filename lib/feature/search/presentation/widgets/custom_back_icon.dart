import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilits/app_size.dart';
import '../../../home/presentation/cubit/home_cubit.dart';

class CustomBackIcon extends StatefulWidget {
  const CustomBackIcon({
    super.key,
  });

  @override
  State<CustomBackIcon> createState() => _CustomBackIconState();
}

class _CustomBackIconState extends State<CustomBackIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            BlocProvider.of<HomeCubit>(context).upadteNavBarIndex(0);
          });
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: AppSize.setHeight(24),
        ));
  }
}
