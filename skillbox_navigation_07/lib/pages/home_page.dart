import 'package:flutter/material.dart';
import 'package:skillbox_navigation_07/widets/drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Home page')),
        drawer: const CustomDrawer(),
        body: const Center(
          child: Text('Home page'),
        ),
      ),
    );
  }
}
