class BookModel {
  int? id;
  final String title;
  final String author;
  String? imageUrl = "";
  String? summary = "";
  String? category = "";

  BookModel(
      {this.id,
      required this.title,
      this.author = "",
      this.imageUrl,
      this.summary,
      this.category});
//factory构造函数fromMap可以方便地从Map映射创建BookModel对象
  factory BookModel.fromMap(Map<String, dynamic> map) {
    print(map);
    print(map['author']);
    return BookModel(
        id: map['id'], // todo:这里同样要确保id不能为null
        title: map['title'], // todo:这里同样要确保title不能为null
        author: map['author'] ?? "",
        imageUrl: map['image_url'] ?? "",
        summary: map['summary'] ?? "",
        category: map['category'] ?? "");
  }
//toMap方法可以将BookModel对象转换回Map,用于保存到数据库或服务端
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'image_url': imageUrl,
      'summary': summary,
      'category': category
    };
  }
}
