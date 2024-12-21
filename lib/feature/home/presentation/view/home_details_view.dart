import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_assets.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';
import 'package:dalil/feature/home/presentation/functions/historcal_list.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_Hostrical_Period_Widget.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_home_appbar.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_home_listview.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_title_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/home_details_artical.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key, required this.dataModel});
  final DataModel dataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.setWidth(16)),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(28),
            ),
            const SliverToBoxAdapter(child: CustomAppBarWidget()),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(24)),
            SliverToBoxAdapter(
                child: CustomHeaderText(text: 'About ${dataModel.title}')),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(47)),
            SliverToBoxAdapter(
                child: CustomDetailsMainArticalWidget(
              img: dataModel.imgPath,
            )),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(22)),
            SliverToBoxAdapter(
                child: CustomHeaderText(text: '${dataModel.title} WARS')),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(16)),
            const SliverToBoxAdapter(
                child: CustomOptionsWidget(
                    txt1: AppString.theHyksosInvasion,
                    txt2: AppString.theBattleofMegiddo,
                    imagePath1: Assets.assetsImgaesHyksos,
                    imagePath2: Assets.assetsImgaesBattleOfMegiddo)),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(24)),
            SliverToBoxAdapter(
                child: CustomHeaderText(text: AppString.recommendations)),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(16)),
            SliverToBoxAdapter(
              child: CustomListViewWidget(list: getCarachterList()),
            ),
          ],
        ),
      ),
    );
  }
}
