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
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 240,
            height: 60,
            child: TextField(
              controller: controller,
              // onSubmitted: (value) {
              //   onSubmitted(value);
              // },
              decoration: const InputDecoration(
                label: Text('Введите название файла'),
                labelStyle: TextStyle(color: Colors.black54),
              ),
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Container(
            width: 80,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
            ),
            child: TextButton(
              child: const Text(
                'Найти',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              onPressed: () {onSubmitted(controller.text);},
            ),
          ),
        ],
      ),
    );
  }
}
