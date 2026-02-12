import 'package:flutter/material.dart';
import 'pages/actions_page.dart';
import 'pages/communication_page.dart';
import 'pages/containment_page.dart';
import 'pages/navigation_page.dart';
import 'pages/selection_page.dart';
import 'pages/textinput_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Widgets Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/actions': (context) => const ActionsPage(),
        '/communication': (context) => const CommunicationPage(),
        '/containment': (context) => const ContainmentPage(),
        '/navigation': (context) => const NavigationPage(),
        '/selection': (context) => const SelectionPage(),
        '/textinput': (context) => const TextInputPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Components')),
      body: ListView(
        children: [
          menu(context, 'Actions', '/actions'),
          menu(context, 'Communication', '/communication'),
          menu(context, 'Containment', '/containment'),
          menu(context, 'Navigation', '/navigation'),
          menu(context, 'Selection', '/selection'),
          menu(context, 'Text Inputs', '/textinput'),
        ],
      ),
    );
  }

  Widget menu(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}