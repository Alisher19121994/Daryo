import 'package:daryo/generated/json/base/json_field.dart';
import 'package:daryo/generated/json/news_all_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NewsAllDataEntity {
	late String status;
	late int totalResults;
	late List<NewsAllDataArticles> articles;

	NewsAllDataEntity();

	factory NewsAllDataEntity.fromJson(Map<String, dynamic> json) => $NewsAllDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NewsAllDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewsAllDataArticles {
	@JSONField(name: "source")
	late NewsAllDataArticlesSource xSource;
	late String author;
	 String? title;
	 String? description;
	 String? url;
	 String? urlToImage;
	 String? publishedAt;
	 String? content;

	NewsAllDataArticles();

	factory NewsAllDataArticles.fromJson(Map<String, dynamic> json) => $NewsAllDataArticlesFromJson(json);

	Map<String, dynamic> toJson() => $NewsAllDataArticlesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewsAllDataArticlesSource {
	dynamic id;
	late String name;

	NewsAllDataArticlesSource();

	factory NewsAllDataArticlesSource.fromJson(Map<String, dynamic> json) => $NewsAllDataArticlesSourceFromJson(json);

	Map<String, dynamic> toJson() => $NewsAllDataArticlesSourceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}