// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> svgImgList = [
  'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg',
  'https://upload.wikimedia.org/wikipedia/commons/4/4f/SVG_Logo.svg',
  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/python.svg',
  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/wii.svg',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module 3',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Svg image slider'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ImageSliderDemo();
  }
}

class ImageSliderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Svg Image slider')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: svgImgList
            .map((item) => Container(
                  child: Center(
                      child:
                          SvgPicture.network(item, fit: BoxFit.cover, width: 200)),
                ))
            .toList(),
      )),
    );
  }
}
