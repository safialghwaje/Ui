import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {



  @override
  _ChooseBetweenTwoOptionsWidget createState() => _ChooseBetweenTwoOptionsWidget();

}
int Index=0;
class _ChooseBetweenTwoOptionsWidget extends State<CheckboxWidget> {
  bool monVal =false;
  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;


    return  LayoutBuilder(
        builder: (context, constraints) {
          return  CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.only(right: 0),
            title: AutoSizeText(
              "الشحنة لدي ( صاحب المتجر )",
              textAlign: TextAlign.right,
              minFontSize: height * 0.015,
              stepGranularity: height * 0.015,
              maxFontSize: height * 0.015,
              style: TextStyle(
                fontFamily: "Changa",
                height: 1,
                fontWeight: FontWeight.w400,
                color: Color(0xFF655D79),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            value: monVal,
            onChanged: (bool? value) {
              setState(() {
                monVal = value!; // لا تحتاج للتحقق من صحة القيمة لأنها بالفعل يمكن أن تكون null
              });
            },
            activeColor: Color(0xff6729FF), // يمكنك استخدام أي لون تريده هنا
          );
        }
    );




  }
}


