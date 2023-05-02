import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../cubits/popular_photos_cubit.dart';
import '../widgets/home_page/photos_view.dart';


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
    return BlocProvider<PopularPhotosCubit>(
      create: (_) => Get.find()..loadFirstPage(),
      child: const PhotosView<PopularPhotosCubit>(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
