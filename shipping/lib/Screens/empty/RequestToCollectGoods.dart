import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/DescriptionBox.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';

import 'Header.dart';







class AddProduct extends StatefulWidget {
  @override
  _AddProduct createState() => _AddProduct();
}

class _AddProduct extends State<AddProduct> {
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
                            top:  height*0.01,
                          ),
                          child:  CitySelection(text: 'تصنيف المنتج', controller: "",)
                      ),



                      Container(
                        height: height*0.05,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child: TextFieldWidget(Text: 'اسم المنتج', Controller: nameController,),
                      ),
                      Container(
                        height: height*0.05,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child: TextFieldWidget(Text: 'السعر', Controller: nameController,),
                      ),


                      Container(
                        height: height*0.1,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.04,
                        ),
                        child: DescriptionBoxWidget(text: 'ملاحظه', controller: nameController,),
                      ),
                      Container(
                        height: height*0.045,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(

                              height: height*0.05,
                              width:constraints.maxWidth*0.35 ,

                              child: IconTextBottonWidget(
                                colorrFont:Color(0xffffffff),
                                colorBackround: Color(0xff6729FF),
                                text: "مسح",
                                colorrBorder: Colors.transparent,
                              ),
                            ),
                            Container(

                              height: height*0.05,
                              width:constraints.maxWidth*0.45 ,

                              child: IconTextBottonWidget(
                                colorrFont:Color(0xff3E4345),
                                colorBackround: Color(0x116729FF),
                                text: "عرض المنتج",

                                colorrBorder: Color(0xffEFEFEF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(

                        height: height*0.055,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                          bottom: height*0.05,
                        ),
                        child: IconTextBottonWidget(
                          colorrFont:Color(0xffffffff),
                          colorBackround:  Color(0xff6FC351),
                          text: "اظافة المنتج",

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