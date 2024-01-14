import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mansat/Providers/NavigationBar.dart';
import 'package:mansat/Screens/Shipments/ShipmentsProvider/ShipmentsProvider.dart';
import 'package:provider/provider.dart';


class StatisticsShipments extends StatefulWidget {
  @override
  _StatisticsShipments createState() => _StatisticsShipments();
}
class YourData {
  final String title;
  final String subtitle;
  final String percentage;
  final String value;
  final IconData icon;

  YourData({
    required this.title,
    required this.subtitle,
    required this.percentage,
    required this.value,
    required this.icon,
  });
}
class _StatisticsShipments extends State<StatisticsShipments> {
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
   final List<YourData> yourDataList = [
     YourData(
       title: "شحنات",
       subtitle: "في المخزن",
       percentage: "10%",
       value: "5",
       icon: Icons.store_mall_directory,
     ),
     YourData(
       title: "شحنات في",
       subtitle: "انتظار الشحن",
       percentage: "9%",
       value: "4",
       icon: Icons.calendar_month,
     ),
     YourData(
       title: "شحنات في",
       subtitle:  "تعذر تسليمها",
       percentage: "9%",
       value: "4",
       icon: Icons.error_outline,
     ),
     YourData(
       title: "شحنات",
       subtitle:  "قيد التوصيل",
       percentage: "9%",
       value: "4",
       icon: Icons.fire_truck_rounded,
     ),
     YourData(
       title: "شحنات",
       subtitle:  "تم تسليمها",
       percentage: "9%",
       value: "4",
       icon: Icons.done_outline_outlined,
     ),
     YourData(
       title: "شحنات",
       subtitle:  "يعاد توصيلها",
       percentage: "9%",
       value: "4",
       icon: Icons.recycling,
     ),//   "قيد التوصيل",,
     // يمكنك إضافة المزيد من البيانات هنا
   ];


   ScrollController _scrollController = ScrollController();
   bool _isAutoScrolling = false;
   Timer? _timer;

   void initState() {
     super.initState();
     _timer = Timer.periodic(Duration(seconds: 4), (timer) {
       if (!_isAutoScrolling) {
         if (_scrollController.position.pixels !=
             _scrollController.position.maxScrollExtent) {
           _scrollController.animateTo(
             _scrollController.position.maxScrollExtent,
             duration: Duration(milliseconds: 800),
             curve: Curves.linear,
           );
         } else {
           _scrollController.animateTo(
             _scrollController.position.minScrollExtent,
             duration: Duration(milliseconds: 400),
             curve: Curves.linear,
           );
         }
       }
     });

     _scrollController.addListener(_scrollListener);
   }

   void _scrollListener() {
     if (_scrollController.position.userScrollDirection ==
         ScrollDirection.forward ||
         _scrollController.position.userScrollDirection ==
             ScrollDirection.reverse) {
       _isAutoScrolling = true;
     }
   }

   @override
   void dispose() {
     _scrollController.dispose();
     _timer?.cancel(); // Added null check
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double maxHeight = height * 0.4;
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context, listen: false);
    final shipmentsProvider = Provider.of<ShipmentsProvider>(context, listen: false);

    return Center(
      child: Container(
        width: width,
        height: maxHeight,

        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
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
                                      "شحناتك",
                                      textAlign: TextAlign.right,
                                      minFontSize: maxHeight * 0.07,
                                      stepGranularity: maxHeight * 0.07,
                                      maxFontSize: maxHeight * 0.07,
                                      style: headerTextStyle,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    AutoSizeText(
                                      "اليوم الجمعه 14 اكتوبر 2023",
                                      textAlign: TextAlign.right,
                                      minFontSize: maxHeight * 0.035,
                                      stepGranularity: maxHeight * 0.035,
                                      maxFontSize: maxHeight * 0.035,
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
                                  height: constraints.maxHeight * 0.15,
                                  alignment: Alignment.centerLeft,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      shipmentsProvider.pageController = PageController(initialPage: 0);
                                      navigationBarProvider.changeScreen(1);
                                    },
                                    child: Icon(Icons.add),
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
                        flex: 3,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 4,
                        child: LayoutBuilder(
                        builder: (context, constraints) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: _scrollController,
                            child: Row(
                              children: [
                                for (int i = 0; i < yourDataList.length; i += 2)
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      customContainer(

                                        yourDataList[i].title,
                                        yourDataList[i].subtitle,
                                        yourDataList[i].percentage,
                                        yourDataList[i].value,
                                        yourDataList[i].icon,
                                        constraints,
                                      ),
                                      if (i + 1 < yourDataList.length)
                                        customContainer(

                                          yourDataList[i + 1].title,
                                          yourDataList[i + 1].subtitle,
                                          yourDataList[i + 1].percentage,
                                          yourDataList[i + 1].value,
                                          yourDataList[i + 1].icon,
                                          constraints,
                                        ),
                                    ],
                                  ),
                              ],
                            ),
                          );





                        })


                      ),

                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
  Widget customContainer(String title, String subtitle, String percentage, String value, IconData icon,BoxConstraints constraints) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double maxHeight = height * 0.4;

    return  Container(
      width:width*0.45 ,
      height: constraints.maxHeight*0.45,
      margin: EdgeInsets.only(
        left:  width*0.026,
        right: width*0.026,
          bottom: 2
      ),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.all(
          Radius.circular(constraints.maxHeight*0.02),

        ),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: backgroundColor.withOpacity(.1),
          )
        ],
      ),
      child: Center(
        child: SizedBox(
          width:width*0.38 ,
          height: constraints.maxHeight*0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        title,
                        textAlign: TextAlign.right,
                        minFontSize: maxHeight * 0.038,
                        stepGranularity: maxHeight * 0.038,
                        maxFontSize: maxHeight * 0.038,
                        style: TextStyle(
                          fontFamily: "Changa",
                          height: 1,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF576278),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        subtitle,
                        textAlign: TextAlign.left,
                        minFontSize: maxHeight * 0.038,
                        stepGranularity: maxHeight * 0.038,
                        maxFontSize: maxHeight * 0.038,
                        style: TextStyle(
                          fontFamily: "Changa",
                          height: 1,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF576278),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],),
                  SizedBox(
                    width:width*0.14 ,
                    height: constraints.maxHeight*0.14,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                      child: Icon(icon),
                      backgroundColor: Color(0xFFF3EEFF),
                      foregroundColor: Color(0xFF5C1AFF),
                      elevation: 0,
                    ),
                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: width * 0.01,

                        ),
                        child: AutoSizeText(
                          value,
                          textAlign: TextAlign.left,
                          minFontSize: maxHeight * 0.07,
                          stepGranularity: maxHeight * 0.07,
                          maxFontSize: maxHeight * 0.07,
                          style: TextStyle(
                            fontFamily: "Changa",
                            height: 1,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: AutoSizeText(
                          percentage,
                          textAlign: TextAlign.left,
                          minFontSize: maxHeight * 0.038,
                          stepGranularity: maxHeight * 0.038,
                          maxFontSize: maxHeight * 0.038,
                          style: TextStyle(
                            fontFamily: "Changa",
                            height: 1,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF57B857),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    ],
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
      
  }

}
