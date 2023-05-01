import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../domain/entities/photo_entity.dart';
import '../../mock/photos_mock.dart';
import '../widgets/photo_grid.dart';

class NewPhotosPage extends StatefulWidget {
  const NewPhotosPage({super.key});

  @override
  State<NewPhotosPage> createState() => _NewPhotosPageState();
}

class _NewPhotosPageState extends State<NewPhotosPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  PhotoGrid(photos: photosMock);
  }

  @override
  bool get wantKeepAlive => true;
}
