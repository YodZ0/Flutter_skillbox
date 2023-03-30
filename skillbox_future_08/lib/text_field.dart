import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onSubmitted;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {
        onSubmitted(value);
      },
      decoration: const InputDecoration(
        label: Text('Введите название файла'),
        labelStyle: TextStyle(color: Colors.black54),
      ),
      style: const TextStyle(fontSize: 18),
    );
  }
}
