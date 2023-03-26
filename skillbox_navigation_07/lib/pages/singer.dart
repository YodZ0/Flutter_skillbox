import 'package:flutter/material.dart';

class SingerPage extends StatelessWidget {
  static const routeName = '/singer';
  final String singerTitle;
  final String aboutSinger;
  const SingerPage({
    super.key,
    required this.singerTitle,
    required this.aboutSinger,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(singerTitle),
        ),
        body: Center(
          child: Text(aboutSinger),
        ),
      ),
    );
  }
}
