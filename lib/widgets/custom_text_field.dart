import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.onChanged,
    this.controller,
    this.prefix,
    this.suffix,
    this.obscure = false,
    this.textInputType = TextInputType.text,
    this.enabled = true,
    this.padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
  });

  final TextEditingController? controller;
  final String hint;
  final Widget? prefix, suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(32),
      ),
      padding: prefix != null ? null : const EdgeInsets.only(left: 16),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: textInputType,
        onChanged: onChanged,
        enabled: enabled,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          isDense: true,
          isCollapsed: true,
          contentPadding: padding,
          border: InputBorder.none,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
