import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/app_settings.dart';

class NetworkImageView extends StatefulWidget {
  final String name;
  const NetworkImageView({super.key, required this.name});

  @override
  State<NetworkImageView> createState() => _NetworkImageViewState();
}

class _NetworkImageViewState extends State<NetworkImageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final url = '${AppSettings.baseUrl}/media/${widget.name}';
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
