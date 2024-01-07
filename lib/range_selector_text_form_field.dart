import 'package:flutter/material.dart';

import 'int_value_setter.dart';

class RangeSelectorTextFormField extends StatelessWidget {
  final String labelText;
  final IntValueSetter intValueSetter;
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'must be an integer';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}
