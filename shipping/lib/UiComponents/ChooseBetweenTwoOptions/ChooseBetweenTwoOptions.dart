import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ChooseBetweenTwoOptionsWidget extends StatefulWidget {
  final  String tital ;
  final  String textOne ;
  final  String textTow ;

  ChooseBetweenTwoOptionsWidget ({required this.textOne ,required this.textTow, required this.tital});

  @override
  _ChooseBetweenTwoOptionsWidget createState() => _ChooseBetweenTwoOptionsWidget();

}
int Index=0;
class _ChooseBetweenTwoOptionsWidget extends State<ChooseBetweenTwoOptionsWidget> {
  @override
  Widget build(BuildContext context) {




    return  LayoutBuilder(
        builder: (context, constraints) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(constraints.maxHeight*0.1),

          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Color(0xff13033A).withOpacity(.05),
            ),
          ],
          color: Colors.white,
          border: Border.all(width: 1.0, color: Color(0xffEFEFEF),), // إضافة بوردر للحاوية الأولى
        ),
        child: Row(
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color:Index==0? Color(0xff6729FF):Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(constraints.maxHeight*0.1),

                  ),
                  // إضافة بوردر للحاوية الأولى
                ),

                height: constraints.maxHeight,
              width:Index==0? constraints.maxWidth*0.58:constraints.maxWidth*0.4,
                child: Center(
                  child: Container(
                    height: constraints.maxHeight*0.3,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        Index==0? widget.tital+" "+widget.textOne:widget.textOne,

                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: "Changa",
                          height: 1,
                          fontWeight: FontWeight.w500,
                          color: Index==0? Color(0xffffffff):Color(0xFF655D79),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),


                    ),
                  ),



                ),
              ),
              onTap: (){   setState(() { Index=0; });}
              ,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color:Index==1? Color(0xff6729FF):Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(constraints.maxHeight*0.1),

                  ),
                  // إضافة بوردر للحاوية الأولى
                ),

                height: constraints.maxHeight,
               width:Index==1? constraints.maxWidth*0.58:constraints.maxWidth*0.4,

                   child: Center(
          child: Container(
            height: constraints.maxHeight*0.3,

          child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
          Index==1? widget.tital+" "+widget.textTow:widget.textTow,

          maxLines: 1,
          style: TextStyle(
          fontFamily: "Changa",
          height: 1,
          fontWeight: FontWeight.w500,
          color: Index==1? Color(0xffffffff):Color(0xFF655D79),
          ),
          overflow: TextOverflow.ellipsis,
          ),


          ),
          ),



          ),


              ),
                onTap: (){   setState(() { Index=1; });}
            ),
          ],
        ),
      );
        }
    );




  }
}


