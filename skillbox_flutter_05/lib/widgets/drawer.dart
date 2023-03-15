import 'package:flutter/material.dart';
import 'package:skillbox_flutter_05/widgets/profile_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 220,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: const UserProfile(),
              ),
            ),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Profile'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.image_rounded),
            title: const Text('Images'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.file_present_rounded),
            title: const Text('Files'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(onPressed: () {}, child: const Text('Quit')),
                FilledButton(onPressed: () {}, child: const Text('Register')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
