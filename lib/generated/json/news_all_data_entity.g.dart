import 'package:daryo/generated/json/base/json_convert_content.dart';
import 'package:daryo/models/newsapi/Article.dart';

NewsAllDataEntity $NewsAllDataEntityFromJson(Map<String, dynamic> json) {
	final NewsAllDataEntity newsAllDataEntity = NewsAllDataEntity();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		newsAllDataEntity.status = status;
	}
	final int? totalResults = jsonConvert.convert<int>(json['totalResults']);
	if (totalResults != null) {
		newsAllDataEntity.totalResults = totalResults;
	}
	final List<NewsAllDataArticles>? articles = jsonConvert.convertListNotNull<NewsAllDataArticles>(json['articles']);
	if (articles != null) {
		newsAllDataEntity.articles = articles;
	}
	return newsAllDataEntity;
}

Map<String, dynamic> $NewsAllDataEntityToJson(NewsAllDataEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['totalResults'] = entity.totalResults;
	data['articles'] =  entity.articles.map((v) => v.toJson()).toList();
	return data;
}

NewsAllDataArticles $NewsAllDataArticlesFromJson(Map<String, dynamic> json) {
	final NewsAllDataArticles newsAllDataArticles = NewsAllDataArticles();
	final NewsAllDataArticlesSource? xSource = jsonConvert.convert<NewsAllDataArticlesSource>(json['source']);
	if (xSource != null) {
		newsAllDataArticles.xSource = xSource;
	}
	final String? author = jsonConvert.convert<String>(json['author']);
	if (author != null) {
		newsAllDataArticles.author = author;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		newsAllDataArticles.title = title;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		newsAllDataArticles.description = description;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		newsAllDataArticles.url = url;
	}
	final String? urlToImage = jsonConvert.convert<String>(json['urlToImage']);
	if (urlToImage != null) {
		newsAllDataArticles.urlToImage = urlToImage;
	}
	final String? publishedAt = jsonConvert.convert<String>(json['publishedAt']);
	if (publishedAt != null) {
		newsAllDataArticles.publishedAt = publishedAt;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		newsAllDataArticles.content = content;
	}
	return newsAllDataArticles;
}

Map<String, dynamic> $NewsAllDataArticlesToJson(NewsAllDataArticles entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['source'] = entity.xSource.toJson();
	data['author'] = entity.author;
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['url'] = entity.url;
	data['urlToImage'] = entity.urlToImage;
	data['publishedAt'] = entity.publishedAt;
	data['content'] = entity.content;
	return data;
}

NewsAllDataArticlesSource $NewsAllDataArticlesSourceFromJson(Map<String, dynamic> json) {
	final NewsAllDataArticlesSource newsAllDataArticlesSource = NewsAllDataArticlesSource();
	final dynamic id = jsonConvert.convert<dynamic>(json['id']);
	if (id != null) {
		newsAllDataArticlesSource.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newsAllDataArticlesSource.name = name;
	}
	return newsAllDataArticlesSource;
}

Map<String, dynamic> $NewsAllDataArticlesSourceToJson(NewsAllDataArticlesSource entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}