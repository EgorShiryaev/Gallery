import 'package:flutter/material.dart';

class SmallLoader extends StatelessWidget {
  final bool isLoading;
  const SmallLoader({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 50),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            if (isLoading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
