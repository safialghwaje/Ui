import 'package:flutter/material.dart';

class DescriptionBoxWidget extends StatefulWidget {
  final  String text ;
  final TextEditingController controller ;
  DescriptionBoxWidget ({required this.text , required this.controller});

  @override
  _DescriptionBoxWidget createState() => _DescriptionBoxWidget();
}

class _DescriptionBoxWidget extends State<DescriptionBoxWidget> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;


    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
    boxShadow: [
    BoxShadow(
    blurRadius: 1,
    color: Color(0xff13033A).withOpacity(.1),
    ),
    ],
    ),
    child:TextField(
      controller: widget.controller,
      textDirection: TextDirection.rtl,
      maxLines: 4,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Color(0xFF655D79)),
        filled: true,
        fillColor: const Color(0xffffffff), // لون الخلفية
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0F0F0), width: 1.0), // لون وعرض الحدود عند عدم التركيز
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6729FF), width: 1.0), // لون وعرض الحدود عند التركيز
        ),
        labelText: widget.text,
        alignLabelWithHint: true, // لمحاذاة النص مع الحقل
      ),
      style: TextStyle(
        fontFamily: "Changa",
        height: 1,
        fontWeight: FontWeight.w300,
        fontSize: height * 0.015,
        color: Color(0xff6729FF),
      ),
    ),) ;




  }
}