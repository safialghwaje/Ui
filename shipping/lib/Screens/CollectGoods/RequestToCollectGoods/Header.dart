
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';




class Header extends StatefulWidget {
 final PageController controller ;
 Header ({required this.controller});

 @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  Color backgroundColor = Color(0xFF13033A);
  Color iconBackgroundColor = Color(0xFF6729FF);
  Color borderColor = Color(0xFF2A1853);
  TextStyle headerTextStyle = const TextStyle(
    fontFamily: "Changa",
    height: 1,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
  TextStyle dateTextStyle = const TextStyle(
    height: 1,
    fontFamily: "ReadexPro",
    color: Color(0xFF655D79),
    fontWeight: FontWeight.w100,
  );



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return    Column(
      children: [
    
      Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border(
                top: BorderSide(
                  color: borderColor,
                  width: 1.5,
                ),
              ),
            ),
            child: Row(


              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "طلـب التقـاط جديـد",
                        textAlign: TextAlign.right,
                        minFontSize: height * 0.025,
                        stepGranularity: height * 0.025,
                        maxFontSize: height * 0.025,
                        style: headerTextStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        "اليوم الجمعه 14 اكتوبر 2023",
                        textAlign: TextAlign.right,
                        minFontSize: height * 0.015,
                        stepGranularity: height * 0.015,
                        maxFontSize: height * 0.015,
                        style: dateTextStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: height * 0.15,
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                      child: Icon(Icons.calculate_outlined),
                      backgroundColor: iconBackgroundColor,
                      foregroundColor: Colors.white,
                      elevation: 2.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),

              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    );
  }
}