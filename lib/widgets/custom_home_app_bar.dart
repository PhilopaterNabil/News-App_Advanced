import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_team/widgets/custom_title_app_bar.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const CustomTitleAppBar(),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, size: 26),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}