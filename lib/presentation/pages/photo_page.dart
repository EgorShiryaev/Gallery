import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../themes/app_theme.dart';
import '../widgets/photo.dart';
import '../widgets/photo_page/photo_information.dart';
import 'arguments/photo_page_arguments.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  static const routeName = '/photo';

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as PhotoPageArguments;
    final photo = args.photo;

    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 200,
                    child: Photo(photo: photo),
                  ),
                  Padding(
                    padding: AppTheme.pagePadding,
                    child: PhotoInformation(photo: photo),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
