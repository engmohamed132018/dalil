// ignore_for_file: must_be_immutable

import 'package:dalil/feature/home/presentation/cubit/home_cubit.dart';
import 'package:dalil/feature/home/presentation/cubit/home_state.dart';
import 'package:dalil/feature/home/presentation/view/home_view.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_nav_bar.dart';
import 'package:dalil/feature/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMainView extends StatelessWidget {
  HomeMainView({super.key});
  List<Widget> views = const [
    HomeView(),
    Center(child: Text(' cart')),
    SearchView(),
    Center(child: Text(' profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: const CustomNavBar(),
          body: views.elementAt(context.watch<HomeCubit>().navBarIndex),
        );
      },
    );
  }
}
