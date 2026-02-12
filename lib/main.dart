import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const WidgetDemoPage(),
    );
  }
}

class WidgetDemoPage extends StatefulWidget {
  const WidgetDemoPage({super.key});

  @override
  State<WidgetDemoPage> createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  bool isSwitched = false; // สำหรับ Selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material 3 Widgets Demo')),
      
      // 1. Navigation (Drawer)
      drawer: const Drawer(child: Center(child: Text("Navigation Drawer"))),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 2. Containment (Card)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text("Containment: นี่คือ Card"),
                    // 3. Text Inputs
                    const TextField(
                      decoration: InputDecoration(labelText: 'กรอกชื่อของคุณ'),
                    ),
                    const SizedBox(height: 10),
                    
                    // 4. Actions (Buttons)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
                        OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const Divider(), // Containment

            // 5. Selection (Switch)
            ListTile(
              title: const Text("Selection: เปิด/ปิดการแจ้งเตือน"),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) => setState(() => isSwitched = value),
              ),
            ),

            // 6. Communication (SnackBar)
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Communication: บันทึกข้อมูลแล้ว!')),
                );
              },
              child: const Text("แสดง SnackBar"),
            ),
          ],
        ),
      ),

      // 7. Actions (FloatingActionButton)
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      // 8. Navigation (Bottom Bar)
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}