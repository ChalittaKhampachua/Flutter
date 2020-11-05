class Articles {
  final String url;
  final String title;
  final String date;
  final String authorName;
  final String authorUrl;
  final String forumUrl;
  final String imageUrl;
  final int comments;
  final String intro;


  Articles(
      {this.url,
        this.title,
        this.date,
        this.authorName,
        this.authorUrl,
        this.forumUrl,
        this.imageUrl,
        this.comments,
        this.intro});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
        url : json['url'],
        title : json['title'],
        date : json['date'],
        authorName : json['author_name'],
        authorUrl : json['author_url'],
        forumUrl : json['forum_url'],
        imageUrl : json['image_url'],
        comments : json['comments'],
        intro : json['intro'],
    );
  }
}