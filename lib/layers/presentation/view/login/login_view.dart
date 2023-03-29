import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/button/custom_elevated_button.dart';
import 'package:starbucks_app/common/component/widget/custom_text_field.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

import '../../../../gen/assets.gen.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Assets.images.loginBackground.image(),
          Padding(
            padding: EdgeInsets.fromLTRB(
                20.0, MediaQuery.of(context).size.height * 0.2, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.images.starbucksText.image(),
                Padding(
                  padding: context.padding4xTop,
                  child: _subTitle(context),
                ),
                Padding(
                  padding: context.paddingXTop,
                  child: _description(context),
                ),
                Padding(
                  padding: context.padding4xTop,
                  child: CustomTextFormField(
                    backgroundColor: context.transparent,
                    labelText: 'Email',
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: context.paddingXTop,
                  child: CustomTextFormField(
                    backgroundColor: context.transparent,
                    labelText: 'Password',
                  ),
                ),
                Padding(
                  padding: context.padding4xTop,
                  child: _forgotText(context),
                ),
                Padding(
                  padding: context.padding4xTop,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomElevatedButton(
                      title: 'Login',
                      onPressed: () {
                        context.router.push(const NavigationBarRoute());
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Align _forgotText(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot your password?',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w400, color: context.darkGrey),
        ),
      ),
    );
  }

  Text _description(BuildContext context) {
    return Text(
      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit sed do eiusmod tempor',
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w400, color: context.darkGrey),
    );
  }

  Text _subTitle(BuildContext context) {
    return Text(
      'Welcome back!',
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(fontSize: context.hw30, fontWeight: FontWeight.w700),
    );
  }
}
