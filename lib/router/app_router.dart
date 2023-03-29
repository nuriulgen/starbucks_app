import 'package:auto_route/auto_route.dart';
import 'package:starbucks_app/layers/presentation/view/login/login_view.dart';
import 'package:starbucks_app/layers/presentation/view/splashScreen/splash_screen_view.dart';

import '../layers/presentation/view/detail/detail_view.dart';
import '../layers/presentation/view/home/home_view.dart';
import '../layers/presentation/view/navigation_bar_main_view.dart';
import '../layers/presentation/view/payment/payment_completed_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenView, path: 'splash', initial: true),
    AutoRoute(page: LoginView, path: 'login'),
    AutoRoute(page: HomeView, path: 'home'),
    AutoRoute(page: NavigationBarView, path: 'navigation'),
    AutoRoute(page: PaymentCompletedView, path: 'orderCompleted'),
    AutoRoute<String>(page: DetailView, path: 'detail'),
  ],
)
class $AppRouter {}
