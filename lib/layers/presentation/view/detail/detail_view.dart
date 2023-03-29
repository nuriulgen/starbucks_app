import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbucks_app/common/component/widget/custom_app_bar.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';
import 'package:starbucks_app/router/app_router.gr.dart';

import '../../../../common/component/button/custom_elevated_button.dart';
import '../../../../gen/assets.gen.dart';

class DetailView extends ConsumerStatefulWidget {
  const DetailView(
      {super.key, required this.coffeeName, required this.imagePath});
  final String coffeeName;
  final String imagePath;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailViewState();
}

class _DetailViewState extends ConsumerState<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Ürün Detayı'),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding2xVertical,
              child: _coffeeImage(),
            ),
            Padding(
              padding: context.padding2xVertical + context.padding2xLeft,
              child: _coffeeName(context),
            ),
            Padding(
              padding: context.padding2xLeft + context.paddingXVertical,
              child: _coffeeDesription(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const _CustomBottomCard(),
    );
  }

  Text _coffeeDesription(BuildContext context) {
    return Text(
      'Toffee nut syrup is blended with ice and milk,then topped with whipped cream and a delicious toffee nut flavoured topping.',
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(fontWeight: FontWeight.w400, color: context.dark),
    );
  }

  Text _coffeeName(BuildContext context) {
    return Text(
      widget.coffeeName,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.w700, color: context.dark),
    );
  }

  Center _coffeeImage() {
    return Center(
      child: ClipOval(
        child: Image.asset(
          'assets/images/${widget.imagePath}.png',
          width: context.hw200,
          height: context.hw200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _CustomBottomCard extends StatelessWidget {
  const _CustomBottomCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      )),
      child: SizedBox(
        height: 330,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding5xTop,
                child: Text(
                  '24,50 TL',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: context.padding3xTop,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: context.buttonGrey,
                        width: 150,
                        height: 40,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
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
                                '2',
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
                                onPressed: () {},
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
                    Expanded(
                      child: Padding(
                        padding: context.padding3xLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Assets.images.tall.image(),
                            Assets.images.grande.image(),
                            Assets.images.venti.image(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: context.padding3xTop,
                child: CustomElevatedButton(
                  onPressed: () {
                    context.router.push(const PaymentCompletedRoute());
                  },
                  title: 'Satın Al',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
