import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/DescriptionBox.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';

import 'Header.dart';







class AddShipmentWidget extends StatefulWidget {
  @override
  _AddShipmentWidget createState() => _AddShipmentWidget();
}

class _AddShipmentWidget extends State<AddShipmentWidget> {
  PageController _controller = PageController(initialPage: 1);
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    final double height = MediaQuery.of(context).size.height;
    final List<Widget> pages = [
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
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: TextFieldWidget(Text: 'عدد القطع', Controller: nameController,),
                    ),
                    Container(
                      height: height*0.05,
                      width:constraints.maxWidth*0.4 ,
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: TextFieldWidget(Text: 'تكلفة التوصيل', Controller: nameController,),
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
                child:  ChooseBetweenTwoOptionsWidget(textOne: 'علي المستلم', textTow: 'علي المتجر', tital: 'تكلفة الشحن',),
              ),
              Container(
                height: height*0.05,
                width:constraints.maxWidth*0.85 ,
                margin: EdgeInsets.only(
                  top:  height*0.05,
                ),
                child:  ChooseBetweenTwoOptionsWidget(textOne: 'قابله للكسر', textTow: 'غير قابله للكسر', tital: 'بضائع',),
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
                    " اجمالي التكلفه شامل الشحن : 245 دل",
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
                  top:  height*0.12,
                ),
                child: IconTextBottonWidget(
                  colorrFont:Color(0xffffffff),
                  colorBackround: Color(0xff6FC351),
                  text: "اظافة",

                  colorrBorder: Colors.transparent,
                ),
              ),


            ],
          );
        },
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
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: TextFieldWidget(Text: 'الهـاتـف', Controller: nameController,),
                    ),
                    Container(
                      height: height*0.05,
                      width:constraints.maxWidth*0.4 ,
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child: TextFieldWidget(Text: 'الهاتف الاحتياطي', Controller: nameController,),
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
                child: DescriptionBoxWidget(text: 'الـوصـف', controller: nameController,),
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
                      child:  CitySelection(text: 'المدينة', controller: "",)
                    ),
                    Container(
                      height: height*0.05,
                      width:constraints.maxWidth*0.4 ,
                      margin: EdgeInsets.only(
                        top:  height*0.05,
                      ),
                      child:  CitySelection(text: 'المنطقه', controller: "",)
                    ),

                  ],
                ),

              ),
              Container(

                height: height*0.055,
                width:constraints.maxWidth*0.85 ,
                margin: EdgeInsets.only(
                  top:  height*0.05,
                ),
                child: IconTextBottonWidget(
                  colorrFont:Color(0xffffffff),
                  colorBackround: Color(0xff6FC351),
                  text: "بيانات الشحنة",

                  colorrBorder: Colors.transparent,
                ),
              ),


            ],
          );
        },
      ),

    ];


    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [


              SizedBox(
                  height: height*0.2,
                  child: Header(controller: _controller,)
              ),
              Container(
                height: height*0.6,
                child: PageView(
                  controller: _controller,
                  children: pages,
                  onPageChanged: (int index) {
                    setState(() { _controller=PageController(initialPage: index); });
                  },
                ),
              )


            ],
          );
        },
      ),


    );
  }
}