import 'package:flutter/material.dart';
import 'package:news_app_team/models/category_model.dart';
import 'package:news_app_team/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: "Health"),
    CategoryModel(categoryName: "Sports"),
    CategoryModel(categoryName: "Technology"),
    CategoryModel(categoryName: "Science"),
    CategoryModel(categoryName: "Business"),
    CategoryModel(categoryName: "Entertainment"),
    // CategoryModel(categoryName: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
