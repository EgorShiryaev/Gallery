import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/entities/photo_entity.dart';
import '../../cubits/photos_cubit.dart';
import '../../pages/arguments/photo_page_arguments.dart';
import '../../pages/photo_page.dart';
import '../network_image_view.dart';

class Photo<CubitType extends PhotosCubit> extends HookWidget {
  final PhotoEntity photo;
  final bool needLoadNextPage;
  const Photo({
    super.key,
    required this.photo,
    required this.needLoadNextPage,
  });

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (needLoadNextPage) {
        BlocProvider.of<CubitType>(context).loadNextPage();
      }
      return null;
      // ignore: require_trailing_commas
    }, []);

    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: GestureDetector(
        onTap: () {
          final args = PhotoPageArguments(photo: photo);
          Navigator.pushNamed(context, PhotoPage.routeName, arguments: args);
        },
        child: NetworkImageView(name: photo.image.name),
      ),
    );
  }
}
