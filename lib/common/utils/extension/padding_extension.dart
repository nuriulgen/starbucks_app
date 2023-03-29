import 'package:flutter/material.dart';

extension PaddingExtension on BuildContext {
  // X: double = 10

  //PADDING
  EdgeInsets get paddingLowAll => const EdgeInsets.all(8.0);
  EdgeInsets get paddingMediumAll => const EdgeInsets.all(16.0);
  EdgeInsets get paddingHighAll => const EdgeInsets.all(24.0);

  EdgeInsets get paddingX2Vertical => const EdgeInsets.symmetric(vertical: 5.0);
  EdgeInsets get paddingXVertical => const EdgeInsets.symmetric(vertical: 10.0);
  EdgeInsets get padding2xVertical => const EdgeInsets.symmetric(vertical: 20.0);

  EdgeInsets get paddingX2Horizontal =>const EdgeInsets.symmetric(horizontal: 5.0);

  EdgeInsets get paddingXHorizontal => const EdgeInsets.symmetric(horizontal: 10.0);
  EdgeInsets get padding2xHorizontal =>const EdgeInsets.symmetric(horizontal: 20.0);

  EdgeInsets get paddingX2Top => const EdgeInsets.only(top: 5.0);
  EdgeInsets get paddingXTop => const EdgeInsets.only(top: 10.0);
  EdgeInsets get padding2xTop => const EdgeInsets.only(top: 20.0);
  EdgeInsets get padding3xTop => const EdgeInsets.only(top: 30.0);
  EdgeInsets get padding4xTop => const EdgeInsets.only(top: 40.0);
  EdgeInsets get padding5xTop => const EdgeInsets.only(top: 50.0);

  EdgeInsets get paddingX2Bottom => const EdgeInsets.only(bottom: 5.0);
  EdgeInsets get paddingXBottom => const EdgeInsets.only(bottom: 10.0);
  EdgeInsets get padding2xBottom => const EdgeInsets.only(bottom: 20.0);
  EdgeInsets get padding3xBottom => const EdgeInsets.only(bottom: 30.0);

  EdgeInsets get paddingX2Left => const EdgeInsets.only(left: 5.0);
  EdgeInsets get paddingXLeft => const EdgeInsets.only(left: 10.0);
  EdgeInsets get padding2xLeft => const EdgeInsets.only(left: 20.0);
  EdgeInsets get padding3xLeft => const EdgeInsets.only(left: 30.0);

  EdgeInsets get paddingX2Right => const EdgeInsets.only(right: 5.0);
  EdgeInsets get paddingXRight => const EdgeInsets.only(right: 10.0);
  EdgeInsets get padding2xRight => const EdgeInsets.only(right: 20.0);
  EdgeInsets get padding3xRight => const EdgeInsets.only(right: 30.0);
}
