import"package:flutter/material.dart";
import"/features/article/data/remote/models/news_model.dart";
abstract class ArticleRepository {
  Future<NewsModel?> getAllRepositories({required String newsName});
}