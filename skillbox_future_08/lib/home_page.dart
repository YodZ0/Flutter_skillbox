import 'package:flutter/material.dart';
import 'package:skillbox_future_08/build_future_text.dart';
import 'text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomePage> {
  String file = '';
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Future homework'),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          child: Column(
            children: [
              CustomTextField(
                controller: textController,
                onSubmitted: (fileToSearch) {
                  setState(() {
                    file = fileToSearch;
                    textController.clear();
                  });
                },
              ),
              Text(
                file,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              BuildFutureText(fileName: file),
            ],
          ),
        ),
      ),
    );
  }
}
