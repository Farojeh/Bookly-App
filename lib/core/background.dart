import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget screen;
  const Background({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff1081CA), Color(0xff030318)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: screen);
  }
}
