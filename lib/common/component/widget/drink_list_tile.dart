import 'package:flutter/material.dart';
import 'package:starbucks_app/common/component/button/custom_elevated_button.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';

class DrinkListTile extends StatelessWidget {
  const DrinkListTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  final String imagePath;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        visualDensity: const VisualDensity(vertical: 3, horizontal: 2),
        leading: _coffeeImage(),
        title: _title(context),
        subtitle: _subTitle(context),
        trailing: Padding(padding: context.padding2xTop, child: _addButton()),
      ),
    );
  }

  ClipOval _coffeeImage() {
    return ClipOval(
      child: Image.asset(
        'assets/images/$imagePath.png',
        width: 70,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  SizedBox _addButton() {
    return SizedBox(
      width: 70,
      height: 30,
      child: CustomElevatedButton(
        onPressed: () {},
        title: 'Ekle',
      ),
    );
  }

  Padding _subTitle(BuildContext context) {
    return Padding(
      padding: context.paddingX2Top,
      child: Text(
        '20 TL',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }

  Text _title(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
    );
  }
}
