import 'package:bookly_mvvm/core/widget/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarDetailsview extends StatelessWidget {
  const CustomAppbarDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyIconButton(
            size: 30,
            color: Colors.white,
            onpressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icons.close),
        MyIconButton(
            size: 30,
            color: Colors.white,
            onpressed: () {},
            icon: Icons.shopping_cart_outlined)
      ],
    );
  }
}
