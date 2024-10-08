import 'package:bookly_mvvm/core/background.dart';
import 'package:bookly_mvvm/features/search/presentation/view/widget/search_listview.dart';
import 'package:bookly_mvvm/features/search/presentation/view/widget/search_part.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        screen: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              SearchPart(),
              Expanded(
                child: SearchListview(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
