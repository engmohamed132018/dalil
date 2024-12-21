import 'package:dalil/core/functions/flutter_taost.dart';
import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/core/utilits/app_style.dart';
import 'package:dalil/core/widgets/custom_button.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_state.dart';
import 'package:dalil/feature/auth/presentation/widgets/textfield_widget.dart';
import 'package:dalil/feature/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/forget_image_widget.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is PasswordResetscusessState) {
              showFlutterToast(message: 'check your email for rest password');
              goToPage(context: context, pageName: AppConst.signInRoute);
            } else if (state is PasswordResetFailureState) {
              showFlutterToast(message: state.erroMessage);
            }
          },
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                _buildSized(108),
                const SliverToBoxAdapter(
                    child: WelcomeTextWidget(
                        text: AppString.forgotPasswordScreenText)),
                _buildSized(40),
                const SliverToBoxAdapter(
                  child: ForgetPasswordImageWidget(),
                ),
                _buildSized(24),
                SliverToBoxAdapter(
                    child: Text(
                  AppString.forgetPasswordScrcennbodytext,
                  style: AppStyle.poppinsw400wAnd14sizemidBrown,
                  textAlign: TextAlign.center,
                )),
                _buildSized(17),
                SliverToBoxAdapter(
                  child: CustomTextFieldWidget(
                    labelText: AppString.emailAddress,
                    onChanged: (value) {
                      context.read<AuthCubit>().emailAddress = value;
                    },
                  ),
                ),
                _buildSized(129),
                SliverToBoxAdapter(
                    child: state is PasswordResetLoadingState
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButton(
                            onPressed: () async {
                              await context
                                  .read<AuthCubit>()
                                  .sendPasswordResetEmail();
                            },
                            text: AppString.sendVerificationCode)),
                _buildSized(16),
              ],
            );
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSized(double hieght) {
    return SliverToBoxAdapter(
      child: customSizedBoxFromHieght(hieght),
    );
  }
}
