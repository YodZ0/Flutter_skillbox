import 'package:flutter/material.dart';
import 'package:skillbox_flutter_05/widgets/profile_widget.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      width: 175,
      child: const UserProfile(),
    );
  }
}
