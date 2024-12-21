import 'package:dalil/core/utilits/app_assets.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_Hostrical_Period_Widget.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_home_listview.dart';
import 'package:flutter/material.dart';

import '../functions/historcal_list.dart';
import '../widgets/custom_home_appBAr.dart';
import '../widgets/custom_title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          _buildSizedBoxFromHieght(28),
          //!CustomAppBarWidget
          const SliverToBoxAdapter(
            child: CustomAppBarWidget(),
          ),
          _buildSizedBoxFromHieght(32),
          //!historicalPeriods
          const SliverToBoxAdapter(
            child: CustomHeaderText(
              text: AppString.historicalPeriods,
            ),
          ),
          _buildSizedBoxFromHieght(16),
          //!CustomHomeHistoricalPeriodWidget
          const SliverToBoxAdapter(
            child: CustomOptionsWidget(
                txt1: AppString.ancientEgypt,
                txt2: AppString.islamicEra,
                imagePath1: Assets.assetsImgaesEgyptAcient,
                imagePath2: Assets.assetsImgaesIslamicAre),
          ),
          _buildSizedBoxFromHieght(32),
          //!historicalCharacters
          const SliverToBoxAdapter(
              child: CustomHeaderText(text: AppString.historicalCharacters)),
          _buildSizedBoxFromHieght(16),
          // !getCarachterList

          SliverToBoxAdapter(
              child: CustomListViewWidget(list: getCarachterList())),
          _buildSizedBoxFromHieght(32),
          //!historicalSouvenirs
          const SliverToBoxAdapter(
            child: CustomHeaderText(text: AppString.historicalSouvenirs),
          ),
          _buildSizedBoxFromHieght(16),
          // !getSouveniersList
          SliverToBoxAdapter(
              child: CustomListViewWidget(list: getSouveniersList())),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildSizedBoxFromHieght(double double) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: AppSize.setHeight(double),
      ),
    );
  }
}
