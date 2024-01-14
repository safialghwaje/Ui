import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/Menus/ServiceMenu/Item.dart';
import 'package:mansat/UiComponents/Menus/ServiceMenu/model.dart';

class ServiceMenu extends StatefulWidget {
  final List<ServiceMenuModel> items;
  final String tital;
  ServiceMenu ({required this.items, required this.tital,});
  @override
  _ServiceMenu createState() => _ServiceMenu(items: items ,tital : tital);
}
class _ServiceMenu extends State<ServiceMenu> {
  final List<ServiceMenuModel> items;
  final String tital;
  _ServiceMenu ( {required this.items, required this.tital});
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
        height: height * 0.03+items.length*height * 0.075,
        margin: EdgeInsets.only(
          top:  height*0.03,
        ),

        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      tital,
                      textAlign: TextAlign.left,
                      minFontSize:  height * 0.017,
                      stepGranularity: height * 0.017,
                      maxFontSize:  height * 0.017,
                      style: const TextStyle(
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

                Container(
                  height: items.length*height * 0.075,
                  child: Column(
                    children: items.map((element) {
                      return Item(
                        icon: element.icon,
                        tital: element.title,
                        description: element.description,
                        myFunction: element.myFunction,
                      );
                    }).toList(),
                  )
                ),



              ],
            );
          },
        ),
      ),
    );
  }
}