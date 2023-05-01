import 'package:flutter/material.dart';

import '../../domain/entities/photo_entity.dart';
import '../../mock/photos_mock.dart';
import '../widgets/photo_grid.dart';

class PopularPhotosPage extends StatefulWidget {
  const PopularPhotosPage({super.key});

  @override
  State<PopularPhotosPage> createState() => _PopularPhotosPageState();
}

class _PopularPhotosPageState extends State<PopularPhotosPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PhotoGrid(photos: photosMock);
  }

  @override
  bool get wantKeepAlive => true;
}
