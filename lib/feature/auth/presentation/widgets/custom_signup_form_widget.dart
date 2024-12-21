import 'package:dalil/core/functions/flutter_taost.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/widgets/custom_button.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_state.dart';
import 'package:dalil/feature/auth/presentation/widgets/custom_have_acount_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_string.dart';
import 'term_condition_widget.dart';
import 'textfield_widget.dart';

class CustomSignUpFormWidget extends StatelessWidget {
  const CustomSignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        _buildStateChangeStatus(state, context);
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().signUpFormKey,
          child: Column(
            children: [
              //! first name text field
              CustomTextFieldWidget(
                labelText: AppString.fristName,
                onChanged: (value) {
                  context.read<AuthCubit>().fristName = value;
                },
              ),
              //! last name text field

              CustomTextFieldWidget(
                labelText: AppString.lastName,
                onChanged: (value) {
                  context.read<AuthCubit>().lastName = value;
                },
              ),
              //! emal address text field

              CustomTextFieldWidget(
                labelText: AppString.emailAddress,
                onChanged: (value) {
                  context.read<AuthCubit>().emailAddress = value;
                },
              ),
              //! password text field

              CustomTextFieldWidget(
                labelText: AppString.paswword,
                onChanged: (value) {
                  context.read<AuthCubit>().password = value;
                },
              ),
              //! CustomTermAndConditionWidget

              const CustomTermAndConditionWidget(),
              customSizedBoxFromHieght(88),
              //! sign up button
              state is CreateUserLoadingState
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      onPressed: _buildOnPressed(context),
                      text: AppString.signUp),

              customSizedBoxFromHieght(16),
              //! CustomeHaveAnAccountWidget

              CustomeHaveAnAccountWidget(
                  text: AppString.alreadyHaveAnAccount,
                  onTap: () {
                    goToPage(context: context, pageName: AppConst.signInRoute);
                  },
                  buttonText: AppString.signIn),
              customSizedBoxFromHieght(16),
            ],
          ),
        );
      },
    );
  }

  Function()? _buildOnPressed(BuildContext context) {
    if (context.watch<AuthCubit>().termAndConditionCheckBoxValue) {
      return () async {
        if (context.read<AuthCubit>().signUpFormKey.currentState!.validate()) {
          await context.read<AuthCubit>().createUserWithEmailAndPassword();
        }
      };
    } else {
      return null;
    }
  }

  void _buildStateChangeStatus(state, context) {
    if (state is CreateUserscusessState) {
      showFlutterToast(message: AppString.messageFlutterTaostCreateUser);
      goToPage(context: context, pageName: AppConst.signInRoute);
    } else if (state is CreateUserFailureState) {
      showFlutterToast(message: state.erroMessage);
    }
  }
}
