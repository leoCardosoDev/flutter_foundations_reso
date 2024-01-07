import 'package:flutter/material.dart';

import 'int_value_setter.dart';
import 'range_selector_text_form_field.dart';

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    super.key,
    required this.formKey,
    required this.minIntValueSetter,
    required this.maxIntValueSetter
  });

  final GlobalKey<FormState> formKey;
  final IntValueSetter minIntValueSetter;
  final IntValueSetter maxIntValueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(labelText: 'Minimum', intValueSetter: minIntValueSetter),
            const SizedBox(height: 15),
            RangeSelectorTextFormField(labelText: 'Maximum', intValueSetter: maxIntValueSetter),
          ],
        ),
      ),
    );
  }
}
