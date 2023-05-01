import 'package:flutter/material.dart';

import '../../domain/entities/photo_entity.dart';
import '../pages/arguments/photo_page_arguments.dart';
import '../pages/photo_page.dart';
import 'network_image_view.dart';

class Photo extends StatelessWidget {
  final PhotoEntity photo;
  const Photo({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          final args = PhotoPageArguments(photo: photo);
          Navigator.pushNamed(context, PhotoPage.routeName, arguments: args);
        },
        child: NetworkImageView(name: photo.image.name),
      ),
    );
  }
}
