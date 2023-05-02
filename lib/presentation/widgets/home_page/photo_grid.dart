import 'package:flutter/material.dart';

import '../../../domain/entities/photo_entity.dart';
import '../../cubits/photos_cubit.dart';
import '../../themes/app_theme.dart';
import 'photo.dart';

class PhotoGrid<CubitType extends PhotosCubit> extends StatelessWidget {
  final List<PhotoEntity> items;
  final int totalItems;
  const PhotoGrid({super.key, required this.items, required this.totalItems});

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      bottom: false,
      minimum: AppTheme.pagePadding.copyWith(bottom: 50),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 100,
        ),
        delegate: SliverChildBuilderDelegate(
          childCount: items.length,
          (context, index) {
            final isLastItem = items.length - 1 == index;
            final isAllData = items.length == totalItems;
            final needLoadNextPage = isLastItem && !isAllData;

            return Photo<CubitType>(
              photo: items[index],
              needLoadNextPage: needLoadNextPage,
            );
          },
        ),
      ),
    );
  }
}
