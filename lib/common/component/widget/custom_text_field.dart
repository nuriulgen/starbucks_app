import 'package:flutter/material.dart';

import '../../utils/extension/context_extension.dart';
import '../../utils/extension/padding_extension.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    Key? key,
    this.labelText,
    this.textInputType,
    this.inputBorder,
    this.controller,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.backgroundColor,
    this.textAlign,
  }) : super(key: key);

  final String? labelText;
  final Color? backgroundColor;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final InputBorder? inputBorder;
  final TextEditingController? controller;
  void Function(String)? onChanged;
  String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingXVertical,
      child: TextFormField(
        onChanged: widget.onChanged,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        textAlign: widget.textAlign ?? TextAlign.start,
        decoration: decoration(context),
        validator: widget.validator,
      ),
    );
  }

  InputDecoration decoration(BuildContext context) {
    return InputDecoration(
      border: widget.inputBorder ??
          OutlineInputBorder(borderRadius: BorderRadius.circular(context.hw10)),
      labelText: widget.labelText,
      filled: true,
      fillColor: widget.backgroundColor,
    );
  }
}
