import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      shadowColor: Colors.deepPurple,
      child: ListView(
        children: [
          const SizedBox(height: 50),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            selectedTileColor: Colors.white,
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            title: const Text('Albums'),
            leading: const Icon(Icons.library_music),
            onTap: () {
              Navigator.of(context).pushNamed('/albums');
            },
          ),
        ],
      ),
    );
  }
}
