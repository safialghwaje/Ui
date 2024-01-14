import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';

import 'Header.dart';






class CalculateShipping extends StatefulWidget {
  @override
  _CalculateShipping createState() => _CalculateShipping();
}

class _CalculateShipping extends State<CalculateShipping> {
  PageController _controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;

    TextEditingController nameController = TextEditingController();



    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [


              SizedBox(
                  height: height*0.2,
                  child: Header(controller: _controller,)
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [


                      Container(
                        height: height*0.05,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child:  ChooseBetweenTwoOptionsWidget(textOne: 'عادي', textTow:'نسائي' , tital: 'الشحن',),
                      ),
                      Container(

                        width:constraints.maxWidth*0.85 ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: height*0.05,
                                width:constraints.maxWidth*0.4 ,
                                margin: EdgeInsets.only(
                                  top:  height*0.05,
                                ),
                                child:  CitySelection(text: 'من', controller: "",)
                            ),
                            Container(
                                height: height*0.05,
                                width:constraints.maxWidth*0.4 ,
                                margin: EdgeInsets.only(
                                  top:  height*0.05,
                                ),
                                child:  CitySelection(text: 'الي', controller: "",)
                            ),

                          ],
                        ),

                      ),

                      Container(
                        height: height*0.06,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        decoration: BoxDecoration(

                          color:Color(0xff9A87C8),
                          borderRadius: BorderRadius.circular(height*0.005),

                        ),
                        child:Center(
                          child: AutoSizeText(
                            "  التكلفه شامل الشحن : 0 دل",
                            textAlign: TextAlign.left,
                            minFontSize: height * 0.017,
                            stepGranularity: height* 0.017,
                            maxFontSize: height * 0.017,
                            style: const TextStyle(
                              fontFamily: "Changa",
                              height: 1,
                              fontWeight: FontWeight.w300,
                              color:Color(0xffffffff),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ) ,



                      ),


                      Container(

                        height: height*0.055,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.22,
                        ),
                        child: IconTextBottonWidget(
                          colorrFont:Color(0xffffffff),
                          colorBackround: Color(0xff6FC351),
                          text: "اظافة شحنه",

                          colorrBorder: Colors.transparent,
                        ),
                      ),


                    ],
                  );
                },
              ),


            ],
          );
        },
      ),


    );
  }
}