import 'package:flutter/material.dart';
import 'package:starbucks_app/common/utils/extension/color_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.style,
    this.backgroundColor,
    this.icon,
    this.radius,
    this.textColor,
    this.iconColor,
    this.minimumSize,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;
  final Color? textColor;
  final TextStyle? style;
  final Color? backgroundColor;
  final IconData? icon;
  final Color? iconColor;
  final double? radius;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonStyle(context),
      onPressed: onPressed,
      child: _elevatedButtonTitle(context),
    );
  }

  Widget _elevatedButtonTitle(BuildContext context) {
    return Text(
      title, // elevated button title
      style: style ??
          Theme.of(context).textTheme.titleMedium?.copyWith(
              color: textColor ?? context.white, fontWeight: FontWeight.w600),
    );
  }

  ButtonStyle _buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? context.mainGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 4),
      ),
      minimumSize: minimumSize ?? const Size(350, 55),
    );
  }
}
