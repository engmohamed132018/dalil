import 'package:dalil/core/cachHelper/cach_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetItServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
