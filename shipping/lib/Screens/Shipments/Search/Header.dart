
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class YourData {
  final String title;
  final IconData icon;

  YourData({
    required this.title,


    required this.icon,
  });
}


class Header extends StatefulWidget {



 @override
  _Header createState() => _Header();
}
int _indx =-1;


class _Header extends State<Header> {
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
  List<YourData> yourDataList = [

    YourData(
      title: " في المخزن",
      icon: Icons.store_mall_directory,
    ),
    YourData(
      title: "في انتظار الشحن",

      icon: Icons.calendar_month,
    ),
    YourData(
      title: "تعذر تسليمها",



      icon: Icons.error_outline,
    ),
    YourData(
      title: " قيد التوصيل",
      icon: Icons.fire_truck_rounded,
    ),
    YourData(
      title: " تم تسليمها ",

      icon: Icons.done_outline_outlined,
    ),
    YourData(
      title: " يعاد توصيلها",
      icon: Icons.recycling,
    ),//   "قيد التوصيل",,
    // يمكنك إضافة المزيد من البيانات هنا
  ];


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return     Container(

      height: height*0.2,
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
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
                                "بحث عن شحنة",
                                textAlign: TextAlign.right,
                                minFontSize: height * 0.024,
                                stepGranularity: height * 0.024,
                                maxFontSize: height * 0.024,
                                style: headerTextStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              AutoSizeText(
                                "اليوم الجمعه 14 اكتوبر 2023",
                                textAlign: TextAlign.right,
                                minFontSize: height * 0.014,
                                stepGranularity: height * 0.014,
                                maxFontSize: height * 0.014,
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
                            height: height * 0.16,
                            alignment: Alignment.centerLeft,
                            child: FloatingActionButton(
                              onPressed: () {
                                // Add your onPressed functionality here
                              },
                              child: Icon( Icons.qr_code_scanner,),
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
                  flex: 1,
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
                    flex: 1,
                    child: LayoutBuilder(
                        builder: (context, constraints) {
                          return ListView(
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 0; i < yourDataList.length-1; i ++)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    customContainer(

                                      yourDataList[i].title,
                                      yourDataList[i].icon,
                                      i,
                                    ),

                                  ],
                                ),
                            ],



                          );
                        })


                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customContainer(String title,  IconData icon , int indx) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;


    return  InkWell(
      child: Container(
        width:width*0.32 ,
        height: height*0.05,

        margin: EdgeInsets.only(
          left:  width*0.026,
          right: width*0.026,

        ),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.all(
            Radius.circular(height*0.1,),

          ),
          color:_indx==indx? Color(0xff6729FF):Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: backgroundColor.withOpacity(.1),
            )
          ],
        ),
        child: Center(
          child: SizedBox(
            width:width*0.27 ,
            height: height*0.045,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    AutoSizeText(
                      title,
                      textAlign: TextAlign.right,
                      minFontSize: height * 0.013,
                      stepGranularity: height * 0.013,
                      maxFontSize: height * 0.013,
                      style: TextStyle(
                        fontFamily: "Changa",
                        height: 1.9,
                        fontWeight: FontWeight.w800,
                        color:_indx==indx? Colors.white: Color(0xFF576278),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(

                      height: height*0.025,
                      width:  height*0.025,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        child: Icon(icon),
                        backgroundColor:_indx==indx? Colors.transparent: Color(0xFFF3EEFF),
                        foregroundColor:_indx==indx? Colors.white: Color(0xFF5C1AFF),
                        elevation: 0,
                      ),
                    ),


                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      onTap: (){
        setState(() {
          if(_indx==indx)
          {
            _indx=-1;
          }else{
            _indx=indx;
          }



        });   },
    );

  }
}