import 'package:flutter/material.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/layers/presentation/view/home/home_view.dart';
import 'package:starbucks_app/layers/presentation/view/payment/payment_view.dart';

import 'location/location_view.dart';
import 'order/order_view.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationBarViewState createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  int _currentIndex = 0;

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> widgetList = const [
    HomeView(),
    OrderView(),
    PaymentView(),
    LocationView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_currentIndex],
      bottomNavigationBar: Container(
        decoration: _navigationDecoration(context),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(context.hw30),
            topRight: Radius.circular(context.hw30),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: context.mainGreen,
            unselectedItemColor: Colors.grey[500],
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTapped,
            items: _barItems,
          ),
        ),
      ),
    );
  }

  BoxDecoration _navigationDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(context.hw30),
        topLeft: Radius.circular(context.hw30),
      ),
      boxShadow: [
        BoxShadow(
          color: context.black100,
          spreadRadius: 0,
          blurRadius: context.hw10,
        ),
      ],
    );
  }

  List<BottomNavigationBarItem> get _barItems {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.star_border, size: context.hw30),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_drink, size: context.hw30),
        label: 'Order',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.payment, size: context.hw30),
        label: 'Payment',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.location_on, size: context.hw30),
        label: 'Location',
      ),
    ];
  }
}
