import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          )
        ],
      ),
    );
  }
}
