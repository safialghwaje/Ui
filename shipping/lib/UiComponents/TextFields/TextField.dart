import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final  String Text ;
  final TextEditingController Controller ;
  TextFieldWidget ({required this.Text , required this.Controller});

  @override
  _TextFieldWidget createState() => _TextFieldWidget();
}

class _TextFieldWidget extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;


    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
          boxShadow: [
            BoxShadow(
              blurRadius: 1.5,
              color: Color(0xff13033A).withOpacity(.1),
            ),
          ],
    ),
    child:TextField(
      controller: widget.Controller,
      textDirection: TextDirection.rtl,
      maxLines: 1,

      decoration:  InputDecoration(
        labelStyle: const TextStyle(color: Color(0xFF655D79)),
        filled: true,
        fillColor: const Color(0xffffffff), // لون الخلفية
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0F0F0), width: 1.0), // لون وعرض الحدود عند عدم التركيز
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6729FF), width: 1.0), // لون وعرض الحدود عند التركيز
        ),
        labelText: widget.Text,
      ),
      style: TextStyle(
        fontFamily: "Changa",
        height: 1,
        fontWeight: FontWeight.w300,
        fontSize: height*0.015,
        color:  Color(0xff6729FF),
      ),
    ),
    );


  }
}