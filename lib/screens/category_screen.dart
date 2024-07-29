import 'package:flutter/material.dart';
import 'package:news_app_team/widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: Text(
          category,
          style: const TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
            imageEqualNull: true,
          ),
          NewsListViewBuilder(
            category: category,
            imageEqualNull: false,
          ),
        ],
      ),
    );
  }
}
