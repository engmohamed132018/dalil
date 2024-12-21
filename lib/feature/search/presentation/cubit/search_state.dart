class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoadingValue extends SearchState {}

final class SearchScusessValue extends SearchState {
  final List<String> list;

  SearchScusessValue({required this.list});
}

final class SearchFailureValue extends SearchState {
  final String message;

  SearchFailureValue({required this.message});
}
