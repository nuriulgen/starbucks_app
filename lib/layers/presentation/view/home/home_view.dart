import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/button/custom_elevated_button.dart';
import 'package:starbucks_app/common/component/widget/custom_app_bar.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';
import 'package:starbucks_app/common/utils/extension/sized_box_extension.dart';

import '../../../../gen/assets.gen.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Starbucks'),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              Padding(
                padding: context.padding3xTop,
                child: _customCardWidget(context),
              ),
              Padding(
                padding: context.padding2xTop,
                child: Row(
                  children: [
                    Assets.images.amountCoffe.image(height: 150, width: 150),
                    _starBalanceComponent(context),
                    _cateringBeverageComponent(context),
                  ],
                ),
              ),
              Padding(
                padding: context.paddingXTop,
                child: const _CampaingsWidgets(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded _cateringBeverageComponent(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Assets.images.greenCup.image(),
                Padding(
                  padding: context.paddingX2Left,
                  child: Text(
                    '0',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            subtitle: Text(
              'İkram İçecek',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: context.dark,
                  ),
            ),
          ),
          CustomElevatedButton(
            title: 'Detaylar',
            style: TextStyle(color: context.dark, fontSize: 14),
            onPressed: () {},
            minimumSize: const Size(70, 40),
            backgroundColor: context.buttonGrey,
          )
        ],
      ),
    );
  }

  Expanded _starBalanceComponent(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Assets.images.goldStar.image(),
                Padding(
                  padding: context.paddingX2Left,
                  child: Text(
                    '0',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            subtitle: Text(
              'Yıldız Bakiyesi',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: context.dark,
                  ),
            ),
          ),
          49.ph // = SizedBox(height: 49):
        ],
      ),
    );
  }

  SizedBox _customCardWidget(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        color: context.mainGreen,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 4, bottom: 2),
              child: Assets.images.cardBackground.image(),
            ),
            Padding(
              padding: context.padding4xTop,
              child: _customListTile(context),
            )
          ],
        ),
      ),
    );
  }

  ListTile _customListTile(BuildContext context) {
    return ListTile(
      title: Text(
        'Toplam Param',
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: context.white, fontWeight: FontWeight.w500),
      ),
      subtitle: Padding(
        padding: context.paddingXTop,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '55,35 TL',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: context.white, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Text(
                  'Yükleme Yap',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: context.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                ),
                Padding(
                  padding: context.paddingXLeft,
                  child: Icon(Icons.arrow_forward, color: context.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CampaingsWidgets extends StatelessWidget {
  const _CampaingsWidgets();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.hw25),
          topRight: Radius.circular(context.hw25),
        ),
      ),
      child: Padding(
        padding: context.paddingMediumAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Divider(
                indent: context.hw100,
                endIndent: context.hw100,
                thickness: context.hw5,
                color: context.buttonGrey,
              ),
            ),
            Padding(
              padding: context.padding2xVertical,
              child: Text(
                'Kampanyalar',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Assets.images.campaignsImage.image(),
            Padding(
              padding: context.padding2xVertical,
              child: Text(
                'Lorem ipsum',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
