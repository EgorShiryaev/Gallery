import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/photo_entity.dart';

class PhotoInformation extends StatelessWidget {
  final PhotoEntity photo;
  const PhotoInformation({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMd().format(photo.dateCreate);
    final descriptionIsEmpty = photo.description.trim().isEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          photo.name,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.left,
        ),
        if (!descriptionIsEmpty) const SizedBox(height: 15),
        if (!descriptionIsEmpty)
          Text(
            photo.description,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.left,
          ),
        if (photo.isNew) const Chip(label: Text('New')),
        if (photo.isPopular) const Chip(label: Text('Popular')),
        Text(
          formattedDate,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
