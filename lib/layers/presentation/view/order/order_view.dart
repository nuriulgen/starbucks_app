import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/button/custom_elevated_button.dart';
import 'package:starbucks_app/common/component/widget/custom_app_bar.dart';
import 'package:starbucks_app/common/component/widget/custom_list_tile.dart';
import 'package:starbucks_app/common/component/widget/drink_list_tile.dart';
import 'package:starbucks_app/common/constant/riverpod_manager.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';
import 'package:starbucks_app/layers/presentation/provider/order_provider.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

class OrderView extends ConsumerStatefulWidget {
  const OrderView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderViewState();
}

class _OrderViewState extends ConsumerState<OrderView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late OrderProvider providerValue;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: context.tabBarLenght, vsync: this);
    ref.read(orderProvider);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    providerValue = ref.watch(orderProvider);
    return DefaultTabController(
      length: context.tabBarLenght,
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Sipariş Yarat'),
        body: SingleChildScrollView(
          child: Padding(
            padding: context.padding2xHorizontal,
            child: Column(
              children: [
                Padding(
                  padding: context.padding2xTop,
                  child: const _ComeGetCard(),
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menu',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 500,
                        child: _tabBarTitle(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  NestedScrollView _tabBarTitle() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            toolbarHeight: 0,
            bottom: TabBar(
              indicator: const BoxDecoration(),
              controller: _tabController,
              isScrollable: true,
              tabs: List.generate(
                context.tabBarLenght,
                (index) => SizedBox(
                  height: 35,
                  width: 120,
                  child: CustomElevatedButton(
                    title: providerValue.tabBarTitle[index],
                    onPressed: () {
                      _tabController.animateTo(index);
                      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                      providerValue.notifyListeners();
                    },
                    backgroundColor: _tabController.index == index
                        ? context.buttonGrey
                        : context.white,
                    style: TextStyle(color: context.black),
                  ),
                ),
              ),
            ),
          ),
        ];
      },
      body: _CustomTabBarWidget(
        tabController: _tabController,
        providerValue: providerValue,
      ),
    );
  }
}

class _CustomTabBarWidget extends StatelessWidget {
  const _CustomTabBarWidget({
    required TabController tabController,
    required this.providerValue,
  }) : _tabController = tabController;

  final TabController _tabController;
  final OrderProvider providerValue;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return DrinkListTile(
              onTap: () {
                context.router.push(DetailRoute(
                  coffeeName: providerValue.coffeeTitleList[index],
                  imagePath: providerValue.imagePathList[index],
                ));
              },
              imagePath: providerValue.imagePathList[index],
              title: providerValue.coffeeTitleList[index],
            );
          },
        ),
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return DrinkListTile(
              imagePath: providerValue.imagePathList[index],
              title: providerValue.coffeeTitleList[index],
            );
          },
        ),
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return DrinkListTile(
              imagePath: providerValue.imagePathList[index],
              title: providerValue.coffeeTitleList[index],
            );
          },
        ),
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return DrinkListTile(
              imagePath: providerValue.imagePathList[index],
              title: providerValue.coffeeTitleList[index],
            );
          },
        ),
      ],
    );
  }
}

class _ComeGetCard extends StatelessWidget {
  const _ComeGetCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.paddingLowAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding2xTop + context.paddingXBottom,
              child: Text(
                "Gel al seçimi",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            CustomListTile(
              title: 'Paketinizi alma zamanı',
              subTitle: '13:00',
              icon: Icons.access_time,
              onPressed: () {},
            ),
            Padding(
              padding: context.paddingXTop,
              child: CustomListTile(
                subTitle: 'Kadıköy,İstanbul',
                icon: Icons.location_on,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
