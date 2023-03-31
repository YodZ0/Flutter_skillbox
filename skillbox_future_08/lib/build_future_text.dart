import 'package:flutter/material.dart';
import 'fetch_file.dart';

class BuildFutureText extends StatelessWidget {
  const BuildFutureText({super.key, required this.fileName});
  final String fileName;

  @override
  Widget build(BuildContext context) {
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
}
