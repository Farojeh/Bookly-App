import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final int maxline;
  final void Function(String?)? onsaved;
  final void Function(String)? onChanged;
  final InputBorder? inputborder;
  final Widget? sufixicon;
  final Widget? prefixIcon;
  final Color? backgroundcolor;
  final Color? hintcolor;
  final double? hintsize;
  final bool? obscureText;
  final String? Function(String?)? validator;
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxline = 1,
      this.onsaved,
      this.onChanged,
      this.inputborder,
      this.sufixicon,
      this.prefixIcon,
      this.backgroundcolor,
      this.hintcolor,
      this.hintsize,
      this.validator,
      this.obscureText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool pv = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: TextFormField(
        obscureText: widget.obscureText != null ? pv : false,
        onChanged: widget.onChanged,
        onSaved: widget.onsaved,
        validator: widget.validator ?? validat,
        maxLines: widget.maxline,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            filled: true,
            fillColor: widget.backgroundcolor,
            hintText: widget.hint,
            hintStyle: textstyle(),
            border: widget.inputborder ?? buildborder(Colors.black, 20),
            focusedBorder: widget.inputborder ?? buildborder(Colors.black, 20),
            enabledBorder: widget.inputborder ?? buildborder(Colors.black, 20),
            suffixIcon: widget.obscureText != null
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        pv = !pv;
                      });
                    },
                    icon: Icon(pv ? Icons.visibility_off : Icons.visibility))
                : widget.sufixicon,
            prefixIcon: widget.prefixIcon),
      ),
    );
  }

  String? validat(value) {
    if (value?.isEmpty ?? true) {
      return "Field is required";
    }
    return null;
  }

  TextStyle textstyle() {
    return TextStyle(
        color: widget.hintcolor ?? const Color.fromARGB(255, 170, 152, 61),
        fontSize: widget.hintsize ?? 21,
        wordSpacing: 2.5,
        letterSpacing: 0.8,
        // fontFamily: Constans.font,
        fontWeight: FontWeight.bold);
  }

  OutlineInputBorder buildborder(Color color, double red) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(red),
        borderSide: BorderSide(color: color, width: 1.3));
  }
}
