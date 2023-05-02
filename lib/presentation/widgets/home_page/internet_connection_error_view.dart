import 'package:flutter/material.dart';

class InternetConnectionErrorView extends StatelessWidget {
  const InternetConnectionErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          const SizedBox(height: 30),
          Text(
            'Oh shucks!',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Slow or no internet connection.',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            'Please check your internet settings',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
