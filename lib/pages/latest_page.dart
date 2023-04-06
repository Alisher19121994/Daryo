import 'package:daryo/models/newsapi/Article.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/News.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  static final String id = "latest_page_id";

  @override
  State<LatestPage> createState() => _LatesPageState();
}

class _LatesPageState extends State<LatestPage> {

   List<NewsAllDataArticles> articles = [];

void fetchData()async{
  String url = "https://newsapi.org/v2/everything?q=tesla&from=2023-03-06&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";
  final response = await http.get(Uri.parse(url));
  print(response.body);

  final Map<String,dynamic> body = jsonDecode(response.body);
  final NewsAllDataEntity article = NewsAllDataEntity.fromJson(body);
  //articles.addAll(article.articles);
  setState(() {
    articles = article.articles;
  });

}

@override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return newsItem(articles[index]);
        },
      ),
    );
  }

  Widget newsItem(NewsAllDataArticles news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Maslahatlar",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "${news.publishedAt} |",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue.shade300,
                  ),
                  SizedBox(
                    width: 4,
                  ),
               //   Text(news.watchCount)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                news.urlToImage??"",
                width: 140,
              ),
              const SizedBox(
                width: 12.0,
              ),
               Expanded(
                child: Text(
                  news.title??"",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 1.2 // each text line height
                      ),
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
