import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/button/custom_elevated_button.dart';
import 'package:starbucks_app/common/component/widget/custom_app_bar.dart';
import 'package:starbucks_app/common/constant/riverpod_manager.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';
import 'package:starbucks_app/layers/presentation/provider/payment_provider.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

import '../../../../common/component/widget/custom_list_tile.dart';
import '../../../../gen/assets.gen.dart';

class PaymentView extends ConsumerStatefulWidget {
  const PaymentView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentViewState();
}

class _PaymentViewState extends ConsumerState<PaymentView> {
  late PaymentProvider providerValue;

  @override
  void initState() {
    super.initState();
    ref.read(paymentProvider);
  }

  @override
  Widget build(BuildContext context) {
    providerValue = ref.watch(paymentProvider);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sipariş Detayı'),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          children: [
            const _ComeGetCard(),
            Padding(
              padding: context.paddingXVertical,
              child: Card(
                child: Padding(
                  padding: context.paddingXHorizontal + context.paddingLowAll,
                  child: Column(
                    children: [
                      _cardTitle(context),
                      Padding(
                        padding: context.paddingXVertical,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          visualDensity:
                              const VisualDensity(vertical: 3, horizontal: 0),
                          leading: _coffeeImage(),
                          title: _title(context),
                          subtitle: Padding(
                            padding: context.paddingXTop,
                            child: _CoffeeCount(providerValue: providerValue),
                          ),
                        ),
                      ),
                      Divider(thickness: 2, color: context.buttonGrey),
                      Padding(
                        padding: context.paddingXVertical,
                        child: _totalPayment(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const _PaymentType(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _payButton(context),
      ),
    );
  }

  ClipOval _coffeeImage() {
    return ClipOval(
      child: Image.asset(
        'assets/images/drinks_hazelnut.png',
        width: 70,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  CustomElevatedButton _payButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        context.router.push(const PaymentCompletedRoute());
      },
      title: 'Öde',
    );
  }

  Column _title(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hazelnut Coffee',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        Padding(
          padding: context.paddingX2Top,
          child: Text(
            '${providerValue.coffeePrice} TL',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Row _totalPayment(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Toplam',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          '${(providerValue.coffeePrice * providerValue.count)} TL',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Row _cardTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sipariş Listesi',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          'Add More',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.w400, color: context.darkGreen),
        ),
      ],
    );
  }
}

class _PaymentType extends StatelessWidget {
  const _PaymentType();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.paddingXHorizontal + context.paddingLowAll,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ödeme Şekli',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Yükleme Yap',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: context.darkGreen),
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: context.darkGreen)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: context.hw100,
                  width: 170,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                    color: context.mainGreen,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 2, left: 4, bottom: 2),
                          child: Assets.images.cardBackground.image(),
                        ),
                        ListTile(
                          title: Text(
                            'Toplam Param',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: context.white,
                                    fontWeight: FontWeight.w500),
                          ),
                          subtitle: Padding(
                            padding: context.paddingX2Top,
                            child: Text(
                              '55,35 TL',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                      color: context.white,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.hw100,
                  width: 170,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                    color: context.buttonGrey,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 2, left: 4, bottom: 2),
                          child: Assets.images.cardBackground.image(),
                        ),
                        ListTile(
                          title: Text(
                            'Kredi',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: context.dark,
                                    fontWeight: FontWeight.w500),
                          ),
                          subtitle: Padding(
                            padding: context.paddingX2Top,
                            child: Text(
                              'Banka Kartı',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: context.dark,
                                      fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Assets.images.icMastercard.image(
                            width: context.hw50,
                            height: context.hw50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CoffeeCount extends StatelessWidget {
  const _CoffeeCount({
    required this.providerValue,
  });

  final PaymentProvider providerValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: context.paddingXRight,
          child: Container(
            color: context.buttonGrey,
            width: 80,
            height: context.hw30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: providerValue.deIncrementCount,
                    icon: Icon(
                      Icons.remove,
                      color: context.darkGrey,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: context.paddingX2Left,
                  child: Text(
                    providerValue.count.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: providerValue.incrementCount,
                    icon: Icon(
                      Icons.add,
                      color: context.darkGrey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: context.buttonGrey,
          width: context.hw100,
          height: context.hw30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: context.paddingX2Left,
                  child: Text(
                    'venti',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600, color: context.darkGrey),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: context.paddingXLeft,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: context.darkGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.mainGreen,
          ),
          height: context.hw30,
          width: context.hw30,
          child: Icon(
            Icons.check,
            color: context.white,
          ),
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
