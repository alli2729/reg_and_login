import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  bool _toggle = false;
  final List<DropdownMenuItem> items = [
    const DropdownMenuItem(
      value: '1',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('1'), Icon(Icons.one_k)],
      ),
    ),
    const DropdownMenuItem(
      value: '2',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('2'), Icon(Icons.two_k)],
      ),
    ),
    const DropdownMenuItem(
      value: '3',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('3'), Icon(Icons.three_k)],
      ),
    ),
    const DropdownMenuItem(
      value: '4',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('4'), Icon(Icons.four_k)],
      ),
    ),
    const DropdownMenuItem(
      value: '5',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('5'), Icon(Icons.five_k)],
      ),
    ),
  ];
  String? _item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Switch(
                value: _toggle,
                onChanged: (value) => setState(() => _toggle = value)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (_toggle) ? () {} : null,
              child: (_toggle) ? const Text('Enabled') : const Text('Disabled'),
            ),
            const SizedBox(height: 20),
            DropdownButton(
              onChanged: (value) => setState(() => _item = value),
              value: _item,
              items: items,
              dropdownColor: const Color.fromARGB(255, 196, 240, 145),
              borderRadius: BorderRadius.circular(8),
              iconSize: 16,
              alignment: Alignment.center,
              elevation: 0,
              hint: const Text('Select an item'),
              icon: const Icon(Icons.arrow_downward),
            ),
          ],
        ),
      ),
    );
  }
}
