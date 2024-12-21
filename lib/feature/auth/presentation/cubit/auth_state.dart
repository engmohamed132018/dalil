class AuthState {}

final class AuthInitial extends AuthState {}

//!create user state
final class CreateUserLoadingState extends AuthState {}

final class CreateUserscusessState extends AuthState {}

final class CreateUserFailureState extends AuthState {
  final String erroMessage;

  CreateUserFailureState({required this.erroMessage});
}

//!sign user state
final class SignUserLoadingState extends AuthState {}

final class SignUserscusessState extends AuthState {}

final class SignUserFailureState extends AuthState {
  final String erroMessage;

  SignUserFailureState({required this.erroMessage});
}

//!TermAndConditionCheckBoxValueState and PasswordVisiblitState
final class TermAndConditionCheckBoxValueState extends AuthState {}

final class PasswordVisiblitState extends AuthState {}

//!forget password state
final class PasswordResetLoadingState extends AuthState {}

final class PasswordResetscusessState extends AuthState {}

final class PasswordResetFailureState extends AuthState {
  final String erroMessage;

  PasswordResetFailureState({required this.erroMessage});
}
