import 'package:flutter/material.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';
import 'package:starbucks_app/common/utils/extension/padding_extension.dart';

import '../../../gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);
  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.white,
      title: _title(context),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Assets.images.notificationIcon.image(),
          onPressed: () {},
        ),
        Padding(
          padding: context.padding2xRight + context.padding2xLeft,
          child: Icon(Icons.more_vert, color: context.darkGreen),
        )
      ],
    );
  }

  Padding _title(BuildContext context) {
    return Padding(
      padding: context.padding2xLeft,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: context.darkGreen, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
