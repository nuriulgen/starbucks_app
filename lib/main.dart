import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/constant/app_constant.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

import 'common/utils/theme.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// app title
      title: AppConstant.appTitle,

      /// theme
      theme: AppTheme.instance.lightTheme,

      // router
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
