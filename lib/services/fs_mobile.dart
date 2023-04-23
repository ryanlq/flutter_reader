import 'dart:io';
import 'package:path_provider/path_provider.dart';
import './fs_base.dart';

class FSMobile implements FSBase {
  @override
  Future<Directory> getDirectory() async {
    return await getApplicationDocumentsDirectory();
  }

  @override
  Future<String> readFile(String filename) async {
    File file = File('${(await getDirectory()).path}/$filename');
    return await file.readAsString();
  }

  @override
  Future<File> writeFile(String filename, String content) async {
    File file = File('${(await getDirectory()).path}/$filename');
    return await file.writeAsString(content);
  }

  @override
  Future<File> appendFile(String filename, String content) async {
    File file = File('${(await getDirectory()).path}/$filename');
    return await file.writeAsString(content, mode: FileMode.append);
  }

  @override
  Future<FileSystemEntity> deleteFile(String filename) async {
    File file = File('${(await getDirectory()).path}/$filename');
    return await file.delete();
  }

  @override
  Future<File> copyFile(String oldPath, String newPath) async {
    File oldFile = File(oldPath);
    // File newFile = File(newPath);
    return await oldFile.copy(newPath);
  }

  @override
  Future<File> moveFile(String oldPath, String newPath) async {
    File oldFile = File(oldPath);
    File newFile = File(newPath);
    return await oldFile.rename(newPath);
  }

  @override
  Future<Directory> createDir(String dirname) async {
    Directory newDir = Directory('${(await getDirectory()).path}/$dirname');
    return await newDir.create();
  }
}
