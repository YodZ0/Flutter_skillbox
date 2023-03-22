import 'package:flutter/material.dart';
import 'package:skillbox_layout_06/const.dart';

class SliverWidgetPage extends StatelessWidget {
  const SliverWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: const Text('SliverAppBar'),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://randomwordgenerator.com/img/picture-generator/55e3d3464a57b10ff3d8992cc12c30771037dbf85254794e7d2b7ed79545_640.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(color: Colors.black26),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  textOnPage,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
                Container(color: Colors.black54),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
