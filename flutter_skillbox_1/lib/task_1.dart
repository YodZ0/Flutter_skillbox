// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SVG pictures'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: SvgPicture.asset('assets/images/Bananas.svg'),
          ),
          Center(
            child: SvgPicture.network('https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg'),
          ),
          Center(
            child: SvgPicture.asset('assets/images/410.svg'),
          ),
        ],
      ),
    );
  }
}
