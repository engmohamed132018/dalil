import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int navBarIndex = 0;

  void upadteNavBarIndex(int index) {
    navBarIndex = index;
    emit(NavBarState());
  }
}
