import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';



class Item extends StatefulWidget {
  final IconData  icon ;
  final String tital ;
  final String  description ;
    Function() myFunction;
  Item ({required this.icon, required this.tital, required this.description, required this.myFunction});
  @override
  _Item createState() => _Item(icon: icon, tital: tital, description: description , myFunction: myFunction);
}

class _Item extends State<Item> {
  final IconData  icon ;
  final String tital ;
  final String  description ;
    Function() myFunction;
  _Item ( {required this.icon, required this.tital, required this.description ,required this.myFunction});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    const Color backgroundColor = Color(0xFF13033A);
    const Color iconBackgroundColor = Color(0xFF6729FF);
    const Color borderColor = Color(0xFF2A1853);
    const Color textColor = Color(0xFF655D79);
    const TextStyle headerTextStyle = TextStyle(
      fontFamily: "Changa",
      height: 1,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    );
    const TextStyle dateTextStyle = TextStyle(
      height: 1,
      fontFamily: "ReadexPro",
      color: textColor,
      fontWeight: FontWeight.w100,
    );

    return Center(
      child: Container(

        width: width*0.9,
        height: height * 0.075,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: height*0.055,
                            child: FloatingActionButton(
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                              backgroundColor: Color(0xFFF3EEFF),
                              child: Icon(icon),

                              foregroundColor: Color(0xFF6729FF),
                              elevation: 0,
                            ),
                          ),
                          Container(
                            height: constraints.maxHeight*0.5,

                            margin: EdgeInsets.only(
                              right:  width*0.025,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    tital,
                                    textAlign: TextAlign.left,
                                    minFontSize: constraints.maxHeight * 0.23,
                                    stepGranularity: constraints.maxHeight* 0.23,
                                    maxFontSize: constraints.maxHeight * 0.23,
                                    style: TextStyle(
                                      fontFamily: "Changa",
                                      height: 1,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF655D79),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),

                                Container(

                                  child: AutoSizeText(
                                    description,
                                    textAlign: TextAlign.left,
                                    minFontSize: constraints.maxHeight * 0.195,
                                    stepGranularity: constraints.maxHeight * 0.195,
                                    maxFontSize: constraints.maxHeight * 0.195,
                                    style: TextStyle(
                                      fontFamily: "Changa",
                                      height: 1,
                                      fontWeight: FontWeight.w100,
                                      color: Color(0xB8655D79),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      Icon(
                          color: Color(0xB8655D79),
                          size: constraints.maxHeight*0.3,
                          Icons.arrow_forward_ios_rounded
                      ),


                    ],
                  ),
                  onTap:myFunction,
                ),
                Divider(
                  color: Color(0xffEEF2F6), // لون الخط
                  thickness: 1.5, // سمك الخط
                  height: constraints.maxHeight*0.2, // ارتفاع الخط
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}