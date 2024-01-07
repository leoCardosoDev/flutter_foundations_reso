import 'package:flutter/material.dart';

import 'range_selector_form.dart';

class RandomSelectorPage extends StatefulWidget {
  const RandomSelectorPage({super.key});
  @override
  State<RandomSelectorPage> createState() => _RandomSelectorPageState();
}

class _RandomSelectorPageState extends State<RandomSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minIntValueSetter: (value) => _min = value,
        maxIntValueSetter: (value) => _max = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
