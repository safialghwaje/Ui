import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';



class Item extends StatefulWidget {
  final String number;
  final String StartingPlace;
  final String PlaceOfArrival;
  final String state;
  final Color stateColor;
  final String year;
  final String day;
  final String Month;

  Item ({ required this.number, required this.year, required this.Month , required this.day, required this.stateColor,required this.PlaceOfArrival,required this.StartingPlace,required this.state });
  @override
  _Item createState() => _Item( );
}

class _Item extends State<Item> {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return InkWell(
    onTap: (){

    },
    child: Center(

      child: Container(

        width: width*0.85,
        height: height * 0.075,

        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(

                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyOverlayDialog();
                        },
                      );
                    },
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          height: constraints.maxHeight*0.5,

                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  widget.state,
                                  textAlign: TextAlign.left,
                                  minFontSize: constraints.maxHeight * 0.195,
                                  stepGranularity: constraints.maxHeight* 0.195,
                                  maxFontSize: constraints.maxHeight * 0.195,
                                  style: TextStyle(
                                    fontFamily: "Changa",
                                    height: 1,
                                    fontWeight: FontWeight.w800,
                                    color: widget.stateColor,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Container(

                                child: AutoSizeText(
                                  widget.number+"#",
                                  textAlign: TextAlign.left,
                                  minFontSize: constraints.maxHeight * 0.195,
                                  stepGranularity: constraints.maxHeight * 0.195,
                                  maxFontSize: constraints.maxHeight * 0.195,
                                  style: TextStyle(
                                    fontFamily: "Changa",
                                    height: 1,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xAA007EC5),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                            ],
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
                                  widget.StartingPlace + " / "+widget.PlaceOfArrival,
                                  textAlign: TextAlign.left,
                                  minFontSize: constraints.maxHeight * 0.195,
                                  stepGranularity: constraints.maxHeight* 0.195,
                                  maxFontSize: constraints.maxHeight *0.195,
                                  style: TextStyle(
                                    fontFamily: "Changa",
                                    height: 1,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF4900FF),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Container(

                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      widget.day,
                                      textAlign: TextAlign.center,
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
                                    AutoSizeText(
                                      "  "+widget.Month,
                                      textAlign: TextAlign.center,
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
                                    AutoSizeText(
                                      "  "+ widget.year,
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
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),

                  ),
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

    ),
    );
  }



}

class MyOverlayDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Background Overlay
        GestureDetector(
          onTap: () {
            Navigator.pop(context); // Close the dialog when tapping the overlay
          },
          child: Container(
            color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
          ),
        ),
        // Actual Dialog with Rounded Corners
        Center(
          child: Container(
            width: width * 0.9,
            height: height * 0.9,
            decoration: BoxDecoration(
              color: Color(0xffFBFBFB),
              borderRadius: BorderRadius.circular(3), // Adjust the radius as needed
            ),
            child:  Container(
              margin: EdgeInsets.only(
                left:  width*0.05,
                right:  width*0.05,
              ),
              child: SingleChildScrollView(
                child: Column(

                  children: [


                  Padding(
                    padding:  EdgeInsets.only( top: height*0.06),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: AutoSizeText(
                            " الشحنه ",
                            textAlign: TextAlign.left,
                            minFontSize: width * 0.05,
                            stepGranularity: width * 0.05,
                            maxFontSize: width * 0.05,
                            style: TextStyle(
                              fontFamily: "Changa",
                              height: 1,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF576278),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(

                          child: AutoSizeText(
                            "OQB2345RS1"+" ",
                            textAlign: TextAlign.left,
                            minFontSize: width * 0.05,
                            stepGranularity: width * 0.05,
                            maxFontSize: width * 0.05,
                            style: TextStyle(
                              fontFamily: "Changa",
                              height: 1,
                              fontWeight: FontWeight.w100,
                              color: Color(0xAA007EC5),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                      ],),
                  ),
                    Container(
                    margin: EdgeInsets.only(
                      top:  height*0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "المرسل إليه",
                          textAlign: TextAlign.left,
                          minFontSize:  height * 0.018,
                          stepGranularity: height * 0.018,
                          maxFontSize:  height * 0.018,
                          style: TextStyle(
                            fontFamily: "Changa",
                            height: 1,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6729FF),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "المرسل إلية",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  "تجريبي",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "المنطقه",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "طرابلس - طرابلس",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "الموبايل",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "0925002008",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "الهاتف",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "0915002008",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "العنوان",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  "طرابلس",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),
                      child: Divider(
                        color: Color(0xffEEF2F6), // لون الخط
                        thickness: 1.5, // سمك الخط
                        height: 1.5, // ارتفاع الخط
                      ),
                    ),

                    ///////
                    Container(
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "تفاصيل الطرد",
                            textAlign: TextAlign.left,
                            minFontSize:  height * 0.018,
                            stepGranularity: height * 0.018,
                            maxFontSize:  height * 0.018,
                            style: TextStyle(
                              fontFamily: "Changa",
                              height: 1,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6729FF),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "اسم المرسل ",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  "متجر الادهم",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "التاريخ",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "3  4  2023",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "فتح الطرد",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "غسر مسموح",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "نوع الطرد",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "تسليم كامل ",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "رقم مرجعي",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "545677",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "الحالة",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "طلب شحن",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "وزن الطرد",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "5",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "نوع الدفع",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "واجب التحصيل",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "شامل التوصيل",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "نغم",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "عدد القطع",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "5",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "الوصف",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  ".............",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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

                        ],
                      ),
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "ملاحظه",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  ".............",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),
                      child: Divider(
                        color: Color(0xffEEF2F6), // لون الخط
                        thickness: 1.5, // سمك الخط
                        height: 1.5, // ارتفاع الخط
                      ),
                    ),
                    //////////////////////////////////////////////////////////
                    Container(
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "تفاصيل ماليه",
                            textAlign: TextAlign.left,
                            minFontSize:  height * 0.018,
                            stepGranularity: height * 0.018,
                            maxFontSize:  height * 0.018,
                            style: TextStyle(
                              fontFamily: "Changa",
                              height: 1,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6729FF),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "المقابل",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  "100 دل",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "ما تم تسليمه",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "0",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "المستحق للعميل",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "0",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                          Container(
                            width:  width*0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: AutoSizeText(
                                    "الرسوم",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.016,
                                    stepGranularity: height* 0.016,
                                    maxFontSize: height * 0.016,
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
                                    "15",
                                    textAlign: TextAlign.left,
                                    minFontSize: height * 0.015,
                                    stepGranularity: height* 0.015,
                                    maxFontSize: height * 0.015,
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
                    ),

                    Container(

                      height: height*0.04,
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: AutoSizeText(
                                  "تم السداد",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.016,
                                  stepGranularity: height* 0.016,
                                  maxFontSize: height * 0.016,
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
                                  "لا",
                                  textAlign: TextAlign.left,
                                  minFontSize: height * 0.015,
                                  stepGranularity: height* 0.015,
                                  maxFontSize: height * 0.015,
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

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top:  height*0.02,
                      ),
                      child: Divider(
                        color: Color(0xffEEF2F6), // لون الخط
                        thickness: 1.5, // سمك الخط
                        height: 1.5, // ارتفاع الخط
                      ),
                    ),

                    ///////

                ],),
              ),
            )



          ),
        ),
      ],
    );
  }
}

