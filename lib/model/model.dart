class BookCatalogueRecord {
  final String id;
  final String bookName;
  final String bookDescription;
  final String imgLink;
  final int stock;

  BookCatalogueRecord({this.id, this.bookName, this.bookDescription, this.imgLink, this.stock});

  factory BookCatalogueRecord.fromJson(Map<String, dynamic> json) {
    return BookCatalogueRecord(
      id: json['id'],
      bookName: json['bookName'],
      bookDescription: json['bookDescription'],
      imgLink: json['imgLink'],
      stock: json['stock']
    );
  }
}
