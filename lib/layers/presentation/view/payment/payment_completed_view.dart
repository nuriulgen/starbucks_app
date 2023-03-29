import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/widget/custom_app_bar.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';

import '../../../../common/component/button/custom_elevated_button.dart';
import '../../../../gen/assets.gen.dart';

class PaymentCompletedView extends ConsumerStatefulWidget {
  const PaymentCompletedView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PaymentCompletedViewState();
}

class _PaymentCompletedViewState extends ConsumerState<PaymentCompletedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sipariş Tamamlandı'),
      body: Padding(
        padding: context.padding2xHorizontal + context.padding3xTop,
        child: Column(
          children: [
            Padding(
              padding: context.padding5xTop,
              child: Center(child: Assets.images.icSuccess.image()),
            ),
            Padding(
              padding: context.padding2xVertical,
              child: Text(
                'Bizden sipariş verdiğiniz için teşekkürler!',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: context.dark, fontWeight: FontWeight.w600),
              ),
            ),
            const _ScoreCard(),
            _sellersCard(context)
          ],
        ),
      ),
      bottomNavigationBar: _closeButton(context),
    );
  }

  Card _closeButton(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.padding2xHorizontal +
            context.paddingXTop +
            context.padding2xBottom,
        child: CustomElevatedButton(
          onPressed: () {
            context.router.pop();
          },
          title: 'Kapat',
        ),
      ),
    );
  }

  Padding _sellersCard(BuildContext context) {
    return Padding(
      padding: context.padding3xTop,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: context.hw100,
        decoration: BoxDecoration(
          color: context.buttonGrey,
          borderRadius: BorderRadius.circular(context.hw10),
        ),
        child: Padding(
          padding: context.padding2xLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding2xTop,
                child: Text(
                  'Best sellers to best sellers increased',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: context.dark),
                ),
              ),
              Padding(
                padding: context.padding2xTop,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 6,
                      decoration: BoxDecoration(
                          color: context.softGrey,
                          borderRadius: BorderRadius.circular(3)),
                      child: Divider(
                        thickness: 5,
                        height: 6,
                        endIndent: 100,
                        color: context.darkGreen,
                      ),
                    ),
                    Padding(
                      padding: context.paddingXHorizontal,
                      child: Assets.images.greenStar.image(),
                    ),
                    Text(
                      '7 / 10',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: context.darkGreen,
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ScoreCard extends StatelessWidget {
  const _ScoreCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: context.paddingMediumAll + context.paddingXVertical,
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: context.padding2xTop + context.paddingXHorizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tebrikler',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Container(
                          width: 80,
                          height: context.hw30,
                          decoration: BoxDecoration(
                              color: context.darkGreen,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.add,
                                color: context.white,
                                size: 20,
                              ),
                              Text(
                                '2',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: context.white,
                                    ),
                              ),
                              Assets.images.goldStar
                                  .image(height: 24, width: 24)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: context.paddingXVertical + context.paddingXBottom,
                    child: ListTile(
                      visualDensity:
                          const VisualDensity(vertical: 3, horizontal: 2),
                      leading: ClipOval(
                        child: Image.asset(
                          'assets/images/drinks_hazelnut.png',
                          width: 70,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'Bizden 2 puan kazandın',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Hazelnut Coffee',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
