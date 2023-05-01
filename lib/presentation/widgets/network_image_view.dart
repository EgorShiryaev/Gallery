import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/app_settings.dart';

class NetworkImageView extends StatelessWidget {
  final String name;
  const NetworkImageView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final url = '${AppSettings.baseUrl}/media/$name';
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) {
        return const Center(
          child: SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
