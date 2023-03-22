import 'package:flutter/material.dart';

class HorizontalListPage extends StatelessWidget {
  HorizontalListPage({super.key});

  List<Widget> data = List.generate(
      50,
      (index) => Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.amber,
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.constrainWidth();

          return SingleChildScrollView(
              scrollDirection: width < 500 ? Axis.horizontal : Axis.vertical,
              child:
                  width < 500 ? Row(children: data) : Column(children: data));
        }),
      ),
    );
  }
}
