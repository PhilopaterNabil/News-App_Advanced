import 'package:flutter/material.dart';
import 'package:news_app_team/widgets/categories_list_view.dart';
import 'package:news_app_team/widgets/custom_home_app_bar.dart';
import 'package:news_app_team/widgets/custom_home_drawer.dart';
import 'package:news_app_team/widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHomeAppBar(),
      drawer: CustomHomeDrawer(),
      body: Padding(
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
      ),
    );
  }
}
