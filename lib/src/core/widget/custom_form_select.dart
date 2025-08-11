import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomDropdownFormFieldBuilder<T> extends StatelessWidget {
  final String name;
  final String? labelText;
  final String? hintText;
  final T? initialValue;
  final List<DropdownMenuItem<T>> items;
  final bool enabled;
  final Widget? suffixIcon;
  final void Function(T?)? onChanged;

  const CustomDropdownFormFieldBuilder({
    super.key,
    required this.name,
    required this.items,
    this.labelText,
    this.hintText,
    this.initialValue,
    this.enabled = true,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T>(
      name: name,
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText ?? "",
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      items: items,
    );
  }
}
