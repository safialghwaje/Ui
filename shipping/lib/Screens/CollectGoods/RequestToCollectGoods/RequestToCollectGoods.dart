import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/DescriptionBox.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';

import 'Header.dart';







class RequestToCollectGoods extends StatefulWidget {
  @override
  _RequestToCollectGoods createState() => _RequestToCollectGoods();
}

class _RequestToCollectGoods extends State<RequestToCollectGoods> {
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

                        width:constraints.maxWidth*0.85 ,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height*0.05,
                              width:constraints.maxWidth*0.4 ,

                              child: TextFieldWidget(Text: 'الهـاتـف', Controller: nameController,),
                            ),
                            Container(
                              height: height*0.05,
                              width:constraints.maxWidth*0.4 ,

                              child: TextFieldWidget(Text: 'الهاتف الاحتياطي', Controller: nameController,),
                            ),
                          ],
                        ),

                      ),
                      Container(
                        height: height*0.05,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child: TextFieldWidget(Text: 'عدد القطع', Controller: nameController,),
                      ),
                      Container(
                        height: height*0.05,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                        ),
                        child: TextFieldWidget(Text: 'رابط خرائط قوقل', Controller: nameController,),
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
                                text: "موقعي الحالي",
                                colorrBorder: Colors.transparent,
                              ),
                            ),
                            Container(

                              height: height*0.05,
                              width:constraints.maxWidth*0.45 ,

                              child: IconTextBottonWidget(
                                colorrFont:Color(0xff3E4345),
                                colorBackround: Color(0x116729FF),
                                text: "تحديد علي الخريطه",

                                colorrBorder: Color(0xffEFEFEF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height*0.1,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.04,
                        ),
                        child: DescriptionBoxWidget(text: 'العـنوان', controller: nameController,),
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

                        height: height*0.055,
                        width:constraints.maxWidth*0.85 ,
                        margin: EdgeInsets.only(
                          top:  height*0.05,
                          bottom: height*0.05,
                        ),
                        child: IconTextBottonWidget(
                          colorrFont:Color(0xffffffff),
                          colorBackround:  Color(0xff6FC351),
                          text: "اظافة طلب الالتقاط",

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