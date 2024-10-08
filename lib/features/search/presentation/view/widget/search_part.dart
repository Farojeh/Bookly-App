import 'package:bookly_mvvm/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white.withOpacity(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 10,
        child: CustomTextField(
          onChanged: (value) {},
          sufixicon: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
          ),
          inputborder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: Colors.black87, width: 1)),
          hint: "  Search what you want",
          hintcolor: Colors.black54,
          hintsize: 16,
          backgroundcolor: const Color.fromARGB(255, 208, 238, 255),
        ));
  }
}
