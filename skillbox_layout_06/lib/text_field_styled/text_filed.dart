import 'package:flutter/material.dart';

class TextFiledStyled extends StatelessWidget {
  const TextFiledStyled({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: 300,
            height: 100,
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: 'Введите значение',
                helperText: 'Поле для поиска заметок',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
