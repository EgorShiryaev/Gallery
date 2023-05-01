import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/pages/home_page.dart';
import 'presentation/pages/photo_page.dart';
import 'presentation/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.light,
      initialRoute: HomePage.routeName,
      getPages: [
        GetPage(
          name: HomePage.routeName,
          page: () => const HomePage(),
        ),
        GetPage(
          name: PhotoPage.routeName,
          page: () => const PhotoPage(),
        ),
      ],
    );
  }
}
