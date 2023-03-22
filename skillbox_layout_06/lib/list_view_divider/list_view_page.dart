import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: List.generate(
            100,
            (index) => Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  index.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
