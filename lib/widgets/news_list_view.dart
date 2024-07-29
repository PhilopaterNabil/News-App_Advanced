import 'package:flutter/material.dart';
import 'package:news_app_team/models/article_model.dart';
import 'package:news_app_team/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView(
      {super.key, required this.articles, required this.imageEqualNull});

  final bool imageEqualNull;

  @override
  Widget build(BuildContext context) {
    return imageEqualNull == true
        ? SliverToBoxAdapter(
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    margin: const EdgeInsets.only(right: 22),
                    child: NewsTile(
                      articleModel: articles[index],
                      imageEqualNull: imageEqualNull,
                    ),
                  );
                },
              ),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return articles[index].image == null
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: NewsTile(
                          articleModel: articles[index],
                          imageEqualNull: imageEqualNull,
                        ),
                      );
              },
            ),
          );
  }
}
