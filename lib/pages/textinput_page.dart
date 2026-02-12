import 'package:flutter/material.dart';

class TextInputPage extends StatelessWidget {
  const TextInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Inputs')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ตัวอย่าง Text Input Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter text',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),
            const Text('โค้ดตัวอย่าง'),
            const SizedBox(height: 8),

            const SelectableText(
              '''
TextField(
  decoration: InputDecoration(
    labelText: 'Enter text',
  ),
)
''',
            ),
          ],
        ),
      ),
    );
  }
}
