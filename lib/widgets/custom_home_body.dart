import 'package:flutter/material.dart';
import 'package:news_app_team/widgets/categories_list_view.dart';
import 'package:news_app_team/widgets/news_list_view_builder.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          NewsListViewBuilder(
            category: 'general',
            imageEqualNull: true,
          ),
          NewsListViewBuilder(
            category: 'general',
            imageEqualNull: false,
          ),
        ],
      ),
    );
  }
}