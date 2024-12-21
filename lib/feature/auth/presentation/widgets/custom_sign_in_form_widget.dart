import 'package:dalil/core/functions/flutter_taost.dart';
import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/widgets/custom_button.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_state.dart';
import 'package:dalil/feature/auth/presentation/widgets/custom_have_acount_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_string.dart';
import 'custom_forget_password_widget.dart';
import 'textfield_widget.dart';

class CustomSignInFormWidget extends StatelessWidget {
  const CustomSignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is SignUserscusessState) {
            if (FirebaseAuth.instance.currentUser!.emailVerified) {
              goToPage(context: context, pageName: AppConst.homeMainviewRoute);
            } else {
              showFlutterToast(message: 'please virefied your email');
            }
          } else if (state is SignUserFailureState) {
            showFlutterToast(message: state.erroMessage);
          }
        },
        bloc: AuthCubit(),
        builder: (context, state) {
          return Form(
            key: context.read<AuthCubit>().signINFormKey,
            child: Column(
              children: [
                CustomTextFieldWidget(
                  labelText: AppString.emailAddress,
                  onChanged: (value) {
                    context.read<AuthCubit>().emailAddress = value;
                  },
                ),
                CustomTextFieldWidget(
                  labelText: AppString.paswword,
                  onChanged: (value) {
                    context.read<AuthCubit>().password = value;
                  },
                ),
                customSizedBoxFromHieght(16),
                CustomForegetPasswordWidget(
                  onTap: () {
                    goToPage(
                        context: context,
                        pageName: AppConst.forgetPassordRoute);
                  },
                ),
                customSizedBoxFromHieght(102),
                //!build custom  button
                state is SignUserLoadingState
                    ? const CircularProgressIndicator(
                        color: AppColor.deepBrown,
                      )
                    : CustomButton(
                        onPressed: () async {
                          if (context
                              .read<AuthCubit>()
                              .signINFormKey
                              .currentState!
                              .validate()) {
                            await context
                                .read<AuthCubit>()
                                .signInWithEmailAndPassword();
                          }
                        },
                        text: AppString.signIn),

                customSizedBoxFromHieght(16),
                CustomeHaveAnAccountWidget(
                    text: AppString.dontHaveAnAccount,
                    onTap: () {
                      goToPage(
                          context: context, pageName: AppConst.signUpRoute);
                    },
                    buttonText: AppString.signUp),
                customSizedBoxFromHieght(16),
              ],
            ),
          );
        },
      ),
    );
  }
}
