import 'package:flutter/material.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Communication')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ตัวอย่าง Communication Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a SnackBar')),
                );
              },
              child: const Text('Show SnackBar'),
            ),

            const SizedBox(height: 24),
            const Text('โค้ดตัวอย่าง'),
            const SizedBox(height: 8),

            const SelectableText(
              '''
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('This is a SnackBar')),
);
''',
            ),
          ],
        ),
      ),
    );
  }
}
