import 'package:dalil/core/utilits/app_assets.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';

List<DataModel> getCarachterList() {
  return [
    DataModel(title: AppString.lionheart, imgPath: Assets.assetsImgaesRichard),
    DataModel(title: AppString.napoleon, imgPath: Assets.assetsImgaesNapoleon),
    DataModel(title: AppString.salAdin, imgPath: Assets.assetsImgaesSalahalDin),
    DataModel(
        title: AppString.qianlong,
        imgPath: Assets.assetsImgaesQianlongEmperorInCourtDress),
  ];
}

List<DataModel> getSouveniersList() {
  return [
    DataModel(title: AppString.oldBooks, imgPath: Assets.assetsImgaesOldBook),
    DataModel(title: AppString.puzzles, imgPath: Assets.assetsImgaesBuzzles),
    DataModel(title: AppString.oldStuff, imgPath: Assets.assetsImgaesOldStuff),
    DataModel(
        title: AppString.oldClothes, imgPath: Assets.assetsImgaesOldCloth),
  ];
}
