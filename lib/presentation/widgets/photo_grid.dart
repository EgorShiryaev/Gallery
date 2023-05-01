import 'package:flutter/material.dart';

import '../../domain/entities/photo_entity.dart';
import '../themes/app_theme.dart';
import 'photo.dart';

class PhotoGrid extends StatelessWidget {
  final List<PhotoEntity> photos;
  const PhotoGrid({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(Duration(seconds: 3), () => true);
      },
      child: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverSafeArea(
              minimum: AppTheme.pagePadding,
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 100,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: photos.length,
                  (context, index) {
                    return Photo(photo: photos[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
