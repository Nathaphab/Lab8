import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selection')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ตัวอย่าง Selection Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            CheckboxListTile(
              title: const Text('Accept'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),

            const SizedBox(height: 24),
            const Text('โค้ดตัวอย่าง'),
            const SizedBox(height: 8),

            const SelectableText(
              '''
CheckboxListTile(
  value: isChecked,
  onChanged: (value) {},
)
''',
            ),
          ],
        ),
      ),
    );
  }
}
