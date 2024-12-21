import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_assets.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_home_appBAr.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_title_widget.dart';
import 'package:flutter/material.dart';

import '../functions/historcal_list.dart';
import '../widgets/character_main_image.dart';
import '../widgets/character_main_text.dart';
import '../widgets/charactermain_artical_widget.dart';
import '../widgets/custom_Hostrical_Period_Widget.dart';
import '../widgets/custom_home_listview.dart';

class CharacterView extends StatelessWidget {
  const CharacterView({super.key, required this.dataModel});
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.setWidth(16)),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(28),
            ),
            const SliverToBoxAdapter(
              child: CustomAppBarWidget(),
            ),
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(24),
            ),
            SliverToBoxAdapter(
              child: CustomHeaderText(text: 'about ${dataModel.title}'),
            ),
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(16),
            ),
            SliverToBoxAdapter(
              child: CharacterMainArticla(
                  imgPath: dataModel.imgPath, title: dataModel.title),
            ),
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(16),
            ),
            SliverToBoxAdapter(
              child: CustomHeaderText(
                text: '${dataModel.title} Wars',
              ),
            ),
            SliverToBoxAdapter(
              child: customSizedBoxFromHieght(16),
            ),
            const SliverToBoxAdapter(
              child: CustomOptionsWidget(
                txt1: AppString.battleofHattn,
                txt2: AppString.battleofJaffa,
                imagePath1: Assets.assetsImgaesSlahWar,
                imagePath2: Assets.assetsImgaesSalahdenwar,
              ),
            ),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(24)),
            const SliverToBoxAdapter(
                child: CustomHeaderText(text: AppString.recommendations)),
            SliverToBoxAdapter(child: customSizedBoxFromHieght(16)),
            SliverToBoxAdapter(
              child: CustomListViewWidget(list: getCarachterList()),
            )
          ],
        ),
      ),
    );
  }
}
