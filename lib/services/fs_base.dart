import 'dart:io';

abstract class FSBase {
  // 获得文件目录路径
  Future<Directory> getDirectory();

  // 读取文件内容
  Future<String> readFile(String filename);

  // 写入文件
  Future<File> writeFile(String filename, String content);

  // 追加文件
  Future<File> appendFile(String filename, String content);

  // 删除文件
  Future<FileSystemEntity> deleteFile(String filename);

  // 复制文件
  Future<File> copyFile(String oldPath, String newPath);

  // 移动文件
  Future<File> moveFile(String oldPath, String newPath);

  // 创建文件夹
  Future<Directory> createDir(String dirname);
}
