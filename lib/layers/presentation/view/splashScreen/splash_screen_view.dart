import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/constant/riverpod_manager.dart';
import 'package:starbucks_app/layers/presentation/provider/splash_screen_provider.dart';

import '../../../../gen/assets.gen.dart';

class SplashScreenView extends ConsumerStatefulWidget {
  const SplashScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SplashScreenViewState();
}

class _SplashScreenViewState extends ConsumerState<SplashScreenView>
    with AfterLayoutMixin {
  late SplashScreenProvider providerValue;

  @override
  void initState() {
    super.initState();
    ref.read(splashScreenProvider);
  }

  @override
  Widget build(BuildContext context) {
    providerValue = ref.watch(splashScreenProvider);

    return Container(
      child: Assets.images.splashScreen.image(fit: BoxFit.fill),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    providerValue.navigateToHome(context);
  }
}
