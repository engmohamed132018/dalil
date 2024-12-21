import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  List<String> searchList = [
    'Saladin',
    'Old Book',
    'Napoleon',
    'Islamic books',
    'Lionheart',
    'War',
    'Hyksos',
    'Megiddo',
    'Arab',
    'Puzzle'
  ];

  searchData({required String valus}) {
    emit(SearchLoadingValue());
    List<String> list = searchList
        .where(
          (element) => element.toLowerCase().contains(valus.toLowerCase()),
        )
        .toList();
    if (list.isNotEmpty) {
      emit(SearchScusessValue(list: list));
    } else {
      emit(SearchFailureValue(message: 'no data'));
    }
  }
}
