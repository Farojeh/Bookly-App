import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 6),
      margin: const EdgeInsets.only(right: 3, top: 3),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
          style: ButtonStyle(
              overlayColor:
                  WidgetStatePropertyAll(Colors.white.withOpacity(0))),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          child: const Icon(
            Icons.search_rounded,
            size: 30,
            color: Colors.white,
          )),
    );
  }
}
