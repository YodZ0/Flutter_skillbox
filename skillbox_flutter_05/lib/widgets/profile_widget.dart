import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://images.freeimages.com/images/large-previews/54c/random-photography-3-1143357.jpg'),
        ),
        SizedBox(height: 15),
        Text(
          'My name',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
