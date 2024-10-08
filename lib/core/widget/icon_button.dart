import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final void Function() onpressed;
  final IconData icon;
  final double size;
  final Color color;
  const MyIconButton(
      {super.key,
      required this.size,
      required this.color,
      required this.onpressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0))),
        child: Icon(
          icon,
          color: color,
          size: size,
        ));
  }
}
