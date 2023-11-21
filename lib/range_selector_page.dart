import 'package:flutter/material.dart';

class RandomSelectorPage extends StatefulWidget {
  const RandomSelectorPage({super.key});
  @override
  State<RandomSelectorPage> createState() => _RandomSelectorPageState();
}

class _RandomSelectorPageState extends State<RandomSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Minimum',
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                  signed: true,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Maximum',
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                  signed: true,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
