import 'package:flutter/material.dart';
import 'package:skillbox_layout_06/horizontal_list/horizontal_list.dart';
import 'package:skillbox_layout_06/text_field_styled/text_filed.dart';
// import 'package:skillbox_layout_06/list_view_divider/list_view_page.dart';
// import 'package:skillbox_layout_06/sliver_widget/sliver_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout_06',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.purple),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.purple),
          ),
        ),
        primarySwatch: Colors.blueGrey,
      ),
      // home: const ListViewPage(),
      // home: const SliverWidgetPage(),
      // home: HorizontalListPage(),
      home: const TextFiledStyled(),
    );
  }
}
