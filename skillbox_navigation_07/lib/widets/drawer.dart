import 'package:flutter/material.dart';
enum ScreenState {home, albums}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  static ScreenState screenState = ScreenState.home;
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
            selected: screenState == ScreenState.home ? true : false,
            onTap: () {
              setState(() {
                screenState = ScreenState.home;
              });
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            title: const Text('Albums'),
            leading: const Icon(Icons.library_music),
            selectedTileColor: Colors.white,
            selected: screenState == ScreenState.albums ? true : false,
            onTap: () {
              setState(() {
                screenState = ScreenState.albums;
              });
              Navigator.of(context).pushNamed('/albums');
            },
          ),
        ],
      ),
    );
  }
}
