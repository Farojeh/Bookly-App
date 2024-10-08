import 'package:bookly_mvvm/features/home/presentation/views/widget/search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30, child: Image.asset("assets/images/bookly.png")),
          const SearchIcon()
        ],
      ),
    );
  }
}
