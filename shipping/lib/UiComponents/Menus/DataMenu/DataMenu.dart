import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/Menus/DataMenu/Item.dart';
import 'package:mansat/UiComponents/Menus/DataMenu/model.dart';





class DataMenu extends StatefulWidget {
  final List<DataMenuModel> items;

  DataMenu ({required this.items, });
  @override
  _DataMenu createState() => _DataMenu(items: items );
}

class _DataMenu extends State<DataMenu> {
  final List<DataMenuModel> items;

  _DataMenu ( {required this.items, });
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(

        width: width*0.9,
        height: height * 0.03+items.length*height * 0.075,
        margin: EdgeInsets.only(
          top:  height*0.03,
        ),

        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Container(
                  height: items.length*height * 0.075,
                  child: Column(
                    children: items.map((element) {
                      return Item(
                        number: element.number,
                        year:element.year,
                        day:element.day,
                        Month: element.Month,
                        stateColor: element.stateColor,
                        PlaceOfArrival: element.PlaceOfArrival,
                        StartingPlace: element.StartingPlace,
                        state: element.state,

                      );
                    }).toList(),
                  )
                )



              ],
            );
          },
        ),
      ),
    );
  }
}