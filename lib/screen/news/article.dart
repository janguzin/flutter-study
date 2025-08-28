class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishment;
  String content;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishment,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] ?? "",
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishment: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Article{author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishment: $publishment, content: $content}';
  }
}
