import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Actions')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ตัวอย่าง Actions Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Action Button'),
            ),

            const SizedBox(height: 24),
            const Text('โค้ดตัวอย่าง'),
            const SizedBox(height: 8),

            const SelectableText(
              '''
ElevatedButton(
  onPressed: () {},
  child: Text('Action Button'),
)
''',
            ),
          ],
        ),
      ),
    );
  }
}
