class NewsModel {
  String name;
  String author;
  String title;
  String description;
  String link;
  String image;
  String date;
  String content;

  NewsModel({
    required this.name,
    required this.author,
    required this.title,
    required this.description,
    required this.link,
    required this.image,
    required this.date,
    required this.content,
  });

  factory NewsModel.fromJson(dynamic data){
    return NewsModel(name: data['source']['name']??'',
        title: data['title']??'',
        description: data['description']??'',
        link: data['url']??'',
        image: data['"urlToImage']??'',
        date: data['publishedAt'],
        content: data['content'],
    author: data['content']);
  }
}