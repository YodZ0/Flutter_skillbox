import 'package:flutter/material.dart';
import 'text_field.dart';
import 'fetch_file.dart';

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
        appBar: AppBar(title: const Text('Future homework'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          child: Column(
            children: [
              CustomTextField(
                controller: textController,
                onSubmitted:(fileToSearch) {
                  setState(() {
                    file = fileToSearch;
                    textController.clear();
                  });
                },
              ),
              const SizedBox(height: 10),
              Text(
                file,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildFutureText(file),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildFutureText(String fileName) {
  return FutureBuilder(
    future: fetchFileFromAssets('assets/$fileName'),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.active:
          return const Center(child: CircularProgressIndicator());
        case ConnectionState.waiting:
          return const Center(child: CircularProgressIndicator());
        case ConnectionState.done:
          return SingleChildScrollView(
            child: Text(
              snapshot.data,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18),
            ),
          );
        default:
          return const Center(child: CircularProgressIndicator());
      }
    },
  );
}
