import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class IconTextBottonWidget extends StatefulWidget {
  IconTextBottonWidget({
    Key? key,
    required this.colorrFont,
    required this.colorrBorder,
    required this.colorBackround,
    required this.text,


  }) : super(key: key);
  Color colorrFont;
  Color colorrBorder;
  Color colorBackround;

  String text;

   bool isHaver = false;
  bool isFocus = false;

  @override
  State<IconTextBottonWidget> createState() => _IconTextBottontState();
}

class _IconTextBottontState extends State<IconTextBottonWidget> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {

        TextStyle textStyle= TextStyle(fontFamily: "Inter", height: 1.1, fontWeight: FontWeight.w700, color:widget.colorrFont,);

        return MouseRegion(
          onHover: (_) => setState(() => widget.isHaver = true),

          onEnter:(_) => setState(() => widget.isFocus = true),
          onExit: (_) => setState(() {
            widget.isFocus=false;
            widget.isHaver = false;
          } ),
          child: Container(
            width:constraints.maxWidth ,
            height: constraints.maxHeight,
            decoration: BoxDecoration(

              color: widget.colorBackround,
              borderRadius: BorderRadius.circular(constraints.maxHeight*0.1),
              border: Border.all(width: 1.0, color: widget.colorrBorder,),
            ),
            child: Center(
              child: AutoSizeText(
                widget.text,
                textAlign: TextAlign.center,
                minFontSize: constraints.maxHeight * 0.4,
                stepGranularity: constraints.maxHeight * 0.4,
                maxFontSize: constraints.maxHeight * 0.4,
                style: TextStyle(
                  fontFamily: "Changa",
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color:  widget.colorrFont,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ) ;
      },
    );

  }
}

