import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/feature/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: AppColor.deepBrown.withOpacity(0.8),
      color: AppColor.deepBrown,
      animationCurve: Curves.bounceInOut,
      index: context.watch<HomeCubit>().navBarIndex,
      items: <Widget>[
        _buildIcon(Icons.home_filled),
        _buildIcon(Icons.add_shopping_cart_outlined),
        _buildIcon(Icons.search),
        _buildIcon(Icons.person),
      ],
      onTap: (index) {
        setState(() {
          BlocProvider.of<HomeCubit>(context).upadteNavBarIndex(index);
        });
      },
    );
  }

  Widget _buildIcon(IconData icondata) {
    return Icon(
      icondata,
      size: 24,
      color: Colors.white,
    );
  }
}
