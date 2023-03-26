import 'package:flutter/material.dart';
import 'package:skillbox_navigation_07/widets/drawer.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class AlbumsPage extends StatefulWidget {
  static const routeName = '/albums';
  const AlbumsPage({super.key});

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  List<dynamic> data = [];

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data/artists.json');
    setState(() => data = json.decode(jsonText));
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Albums')),
        drawer: const CustomDrawer(),
        body: Center(
          child: ListView(
            children: [
              for (int i = 0; data.length > i; i++)
                ListTile(
                  title: Text(data[i]['title'].toString()),
                  onTap: () {
                    Navigator.of(context).pushNamed('/singer', arguments: {
                      'title': data[i]['title'],
                      'about': data[i]['about'],
                    });
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
