import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../../../core/empty_photo_list_entity.dart';
import '../../../domain/entities/photo_list_entity.dart';
import '../../cubits/photos_cubit.dart';
import '../../cubits/photos_state.dart';
import 'full_screen_loader.dart';
import 'internet_connection_error_view.dart';
import 'photo_grid.dart';
import 'small_loader.dart';

class PhotosView<CubitType extends PhotosCubit> extends HookWidget {
  const PhotosView({super.key});

  @override
  Widget build(BuildContext context) {
    final photos = useState<PhotoListEntity>(emptyPhotoListEntity);

    return BlocConsumer<CubitType, PhotosState>(
      listener: (context, state) {
        if (state is LoadedPhotosState) {
          photos.value = state.photos;
        } else if (state is NextPageLoadingPhotosState) {
          photos.value = state.photos;
        } else if (state is ErrorPhotosState) {
          Get.snackbar('Error', state.message);
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () {
            return BlocProvider.of<CubitType>(context).reload();
          },
          child: Scrollbar(
            child: CustomScrollView(
              slivers: [
                if (state is ServerNotAvailablePhotosState)
                  const InternetConnectionErrorView()
                else if (state is FirstLoadingState)
                  const FullScreenLoader()
                else
                  PhotoGrid<CubitType>(
                    items: photos.value.data,
                    totalItems: photos.value.totalItems,
                  ),
                SmallLoader(isLoading: state is NextPageLoadingPhotosState)
              ],
            ),
          ),
        );
      },
    );
  }
}
