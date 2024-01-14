import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';






class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return     Container(
      width: width*0.95,
      height: height*0.055,
      margin: EdgeInsets.only(
        top:  height*0.025,

      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: EdgeInsets.all(constraints.maxHeight*0.06),
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                     Radius.circular(height*0.03),

                  ),
              color: Colors.white, // لون خلفية الكونتينر
              border: Border.all(
                color: Color(0xffEFEFEF), // لون الحدود
                width: 1.5, // عرض الحدود
              ),
            ),
            child: Row(
              children: [
                // يمكنك استخدام الواجهة التي تريدها بداخل الكونتينر

                SizedBox(
                  width: constraints.maxWidth*0.2, // عرض البوتن
                  height: constraints.maxHeight, // ارتفاع البوتن
                  child: ElevatedButton(
                    onPressed: () {
                      // إضافة الأكواد التي تحتاجها عند الضغط على الزر هنا
                    },
                    child:  Center(
                      child: AutoSizeText(
                      "بـحـث",
                       textAlign: TextAlign.left,
                        minFontSize: constraints.maxHeight * 0.3,
                      stepGranularity: constraints.maxHeight * 0.3,
                       maxFontSize: constraints.maxHeight * 0.3,
                      style: TextStyle(
                      fontFamily: "Changa",
                      height: 1,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFFFFFFF),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                       ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height*0.03),
                        // يمكنك ضبط الزاوية هنا للزر المربع
                      ),
                      primary:  Color(0xff9A87C8), // لون خلفية الزر
                      onPrimary: Colors.white, // لون الأيقونة
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: AutoSizeText(
                      "رقم شحنة",
                      textAlign: TextAlign.left,
                      minFontSize: constraints.maxHeight * 0.3,
                      stepGranularity: constraints.maxHeight * 0.3,
                      maxFontSize: constraints.maxHeight * 0.3,
                      style: TextStyle(
                        fontFamily: "Changa",
                        height: 1,
                        fontWeight: FontWeight.w800,
                        color:  Color(0xffA7A2B5),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth*0.13, // عرض البوتن
                  height: constraints.maxHeight, // ارتفاع البوتن
                  child:    IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                      color:Color(0xff9A87C8),
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ),

              ],
            ),
          );


          //   Container(
          //   padding: EdgeInsets.all(8.0),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(
          //        Radius.circular(height*0.03),
          //
          //     ),
          //     color: Colors.blue, // لون خلفية الكونتينر
          //   ),
          //   child: Row(
          //     children: [
          //       // يمكنك استخدام الواجهة التي تريدها بداخل الكونتينر
          //       Expanded(
          //         child: Text(
          //           'Your Text Here',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 18.0,
          //             // أي تنسيقات أخرى للنص هنا
          //           ),
          //         ),
          //       ),
          //       ElevatedButton(
          //         onPressed: () {
          //           // إضافة الأكواد التي تحتاجها عند الضغط على الزر هنا
          //         },
          //         child: Icon(Icons.arrow_forward),
          //         style: ElevatedButton.styleFrom(
          //           shape: CircleBorder(),
          //           padding: EdgeInsets.all(10),
          //           primary: Colors.white, // لون خلفية الزر
          //           onPrimary: Colors.blue, // لون الأيقونة
          //         ),
          //       ),
          //     ],
          //   ),
          // );
        },
      ),);
  }
}

