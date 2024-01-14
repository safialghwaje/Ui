import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/Menus/DataMenu/DataMenu.dart';
import 'package:mansat/UiComponents/Menus/DataMenu/model.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';

import 'Header.dart';






class SearchWidget extends StatefulWidget {
  @override
  _SearchWidget createState() => _SearchWidget();
}

class YourList {
  final String title;
  final IconData icon;

  YourList({
    required this.title,


    required this.icon,
  });
}

List<DataMenuModel> itmes = [
  DataMenuModel(
      number: 'OQB400900643',
      StartingPlace: 'مصراته',
      PlaceOfArrival: 'طرابلس',
      state: 'تم التوصيل',
    stateColor: Color(0xFF6EC150),
    day: '1',
    Month: 'أكتوبر',
    year: '2023',
  ),
  DataMenuModel(
    number: 'OQB400900643',
    StartingPlace: 'مصراته',
    PlaceOfArrival: 'طرابلس',
    state: 'تم التوصيل',
    stateColor: Color(0xFF6EC150),
    day: '1',
    Month: 'أكتوبر',
    year: '2023',
  ),
  DataMenuModel(
    number: 'OQB400900643',
    StartingPlace: 'مصراته',
    PlaceOfArrival: 'طرابلس',
    state: 'تعذر الاستلام',
    stateColor: Colors.red,
    day: '1',
    Month: 'أكتوبر',
    year: '2023',
  ),
  DataMenuModel(
    number: 'OQB400900643',
    StartingPlace: 'مصراته',
    PlaceOfArrival: 'طرابلس',
    state: 'قيد التوصيل',
    stateColor: Color(0xB8655D79),
    day: '1',
    Month: 'أكتوبر',
    year: '2023',
  ),


  // يمكنك إضافة المزيد من العناصر كما تحتاج
];
class _SearchWidget extends State<SearchWidget> {

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
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    TextEditingController nameController = TextEditingController();



    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [

              Header(),

              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      Container(
                          height: height*0.05,
                          width:constraints.maxWidth*0.85 ,
                          margin: EdgeInsets.only(
                            top:  height*0.03,
                          ),
                          child:  TextFieldWidget(Text: 'رقم الشحنة', Controller: nameController,),
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
                                  top:  height*0.03,
                                ),
                                child:  CitySelection(text: 'المدينة', controller: "",)
                            ),
                            Container(
                                height: height*0.05,
                                width:constraints.maxWidth*0.4 ,
                                margin: EdgeInsets.only(
                                  top:  height*0.03,
                                ),
                                child:  CitySelection(text: 'المنطقه', controller: "",)
                            ),

                          ],
                        ),

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
                                  top:  height*0.03,
                                ),
                                child:  CitySelection(text: 'من', controller: "",)
                            ),
                            Container(
                                height: height*0.05,
                                width:constraints.maxWidth*0.4 ,
                                margin: EdgeInsets.only(
                                  top:  height*0.03,
                                ),
                                child:  CitySelection(text: 'الي', controller: "",)
                            ),

                          ],
                        ),

                      ),

                      DataMenu(items: itmes, )



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