import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'new_photos_page.dart';
import 'popular_photos_page.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2, initialIndex: 0);
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'New'),
            Tab(text: 'Popular'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          NewPhotosPage(),
          PopularPhotosPage(),
        ],
      ),
    );
  }
}
