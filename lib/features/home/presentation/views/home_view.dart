import 'package:bookly_mvvm/core/background.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: Background(screen: HomeViewBody())),
    );
  }
}
