import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets(String filePath) {
  return rootBundle.loadString(filePath).then(
    (file) {
      return file.toString();
    },
  ).catchError(
    (error) {
      return 'файл не найден';
    },
  );
}