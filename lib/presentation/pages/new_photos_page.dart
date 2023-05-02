import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';

import '../cubits/new_photos_cubit.dart';
import '../widgets/home_page/photos_view.dart';

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
    return BlocProvider<NewPhotosCubit>(
      create: (_) => Get.find()..loadFirstPage(),
      child: const PhotosView<NewPhotosCubit>(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
