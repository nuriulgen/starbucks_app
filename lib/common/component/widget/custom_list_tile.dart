import 'package:flutter/material.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.title,
    required this.icon,
    this.onPressed,
    required this.subTitle,
  });

  final String? title;
  final String subTitle;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.buttonGrey),
        borderRadius: BorderRadius.circular(context.hw10),
      ),
      child: ListTile(
        title: _title(context),
        subtitle: _subTitle(context),
        trailing: _textButtonWidget(context),
      ),
    );
  }

  Row _subTitle(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Padding(
          padding: context.padding2xLeft + context.paddingXVertical,
          child: Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  TextButton _textButtonWidget(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Değiştir',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: context.darkGreen, fontWeight: FontWeight.w600),
      ),
    );
  }

  Text _title(BuildContext context) {
    return Text(
      title ?? '',
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w400, color: context.grey),
    );
  }
}
