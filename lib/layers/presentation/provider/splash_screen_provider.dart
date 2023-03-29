import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

import '../../../common/utils/durations_items.dart';

class SplashScreenProvider extends ChangeNotifier {
  Future navigateToHome(BuildContext context) async {
    Future.delayed(
      DurationItems.durationMedium(),
    ).then((value) {
      context.router.replace(const LoginRoute());
    });
  }
}
