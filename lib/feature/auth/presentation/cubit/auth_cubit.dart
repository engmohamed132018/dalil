import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? fristName;
  String? lastName;
  String? emailAddress;
  String? password;

  bool passwordIsVisible = true;
  bool termAndConditionCheckBoxValue = false;

  //! fornkeys
  GlobalKey<FormState> signINFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
//!PasswordVisibilty
  void setPasswordVisibilty() {
    passwordIsVisible = !passwordIsVisible;
    emit(PasswordVisiblitState());
  }

//!TermAndConditionCheckBoxValue
  void setTermAndConditionCheckBoxValue(bool value) {
    termAndConditionCheckBoxValue = value;
    emit(TermAndConditionCheckBoxValueState());
  }

//!createUserWithEmailAndPassword
  Future<void> createUserWithEmailAndPassword() async {
    try {
      emit(CreateUserLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      sendEmailVerification();
      _setUserProfileDetails();
      emit(CreateUserscusessState());
    } on FirebaseAuthException catch (e) {
      emit(CreateUserFailureState(erroMessage: e.code));
    } catch (e) {
      emit(CreateUserFailureState(erroMessage: e.toString()));
    }
  }

//!signInWithEmailAndPassword
  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignUserLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
      emit(SignUserscusessState());
    } on FirebaseAuthException catch (e) {
      emit(SignUserFailureState(erroMessage: e.code));
    } catch (e) {
      emit(SignUserFailureState(erroMessage: e.toString()));
    }
  }

//!sendEmailVerification
  Future<void> sendEmailVerification() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
//!sendPasswordResetEmail

  Future<void> sendPasswordResetEmail() async {
    try {
      emit(PasswordResetLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(PasswordResetscusessState());
    } catch (e) {
      emit(PasswordResetFailureState(erroMessage: e.toString()));
    }
  }

  //! save email profile
  Future<void> _setUserProfileDetails() async {
    await FirebaseFirestore.instance.collection(AppConst.userCollection).add({
      AppString.fristName: fristName!,
      AppString.lastName: lastName!,
      AppString.emailAddress: emailAddress!,
    });
  }
}
