import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/layers/presentation/provider/splash_screen_provider.dart';

import '../../layers/presentation/provider/order_provider.dart';
import '../../layers/presentation/provider/payment_provider.dart';

final splashScreenProvider =
    ChangeNotifierProvider((ref) => SplashScreenProvider());

final orderProvider = ChangeNotifierProvider((ref) => OrderProvider());

final paymentProvider = ChangeNotifierProvider((ref) => PaymentProvider());
