import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;

class Dictionary {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get getFile async {
    final path = await _localPath;
    return File('TextFiles/text.txt');
  }

  Future<File> writeToFile(String data) async {
    final file = await getFile;

    // Write the file.
    return file.writeAsString(data);
  }


  Future<String> readFromFile() async {
    try {
      final file = await getFile;

      // Read the file.
      String fileContents = await file.readAsString();

      return fileContents;
    } catch (e) {
      // If encountering an error, return 0.
      return "";
    }
  }
}
