import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
class CitySelection extends StatefulWidget {
  final  String text ;
  final String controller ;
  CitySelection ({required this.text , required this.controller});

  @override
  _CitySelectionState createState() => _CitySelectionState();
}

class _CitySelectionState extends State<CitySelection> {
  String? selectedCity;

  final List<String> cities = [
    'طرابلس',
    'مصراته',
    'بنغازي',
    'درنه',
    'طبرق',
  ];

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    String? dropdownvalue;
    return DropdownButtonFormField<String>(

      hint: Text(
        widget.text,
        style: TextStyle(
          fontFamily: "Changa",
          height: 1,
          fontWeight: FontWeight.w300,
          fontSize: height * 0.014,
          color: Color(0xFF655D79),
        ),
      ),
      decoration:  InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 7), // تحديد الهامش الداخلي للنص
        labelStyle: const TextStyle(color: Color(0xFF655D79)),
        filled: true,
        fillColor: const Color(0xffffffff), // لون الخلفية
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF3EEFF), width: 1.0), // لون وعرض الحدود عند عدم التركيز
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6729FF), width: 1.0), // لون وعرض الحدود عند التركيز
        ),



      ),
      items: cities
          .map((item) => DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontFamily: "Changa",
            height: 1,
            fontWeight: FontWeight.w300,
            fontSize: height*0.017,
            color:  Color(0xFF655D79),
          ),
        ),
      ))
          .toList(),
      value: dropdownvalue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue; // لا تحتاج للتحقق من صحة القيمة لأنها بالفعل يمكن أن تكون null
        });
      },
    );

    //   Padding(
    //   padding: const EdgeInsets.all(20.0),
    //   child:
    //   TypeAheadField(
    //     suggestionsCallback: (pattern) async {
    //       return cities
    //           .where((city) => city.startsWith(pattern))
    //           .toList();
    //     },
    //     itemBuilder: (context, suggestion) {
    //       return ListTile(
    //         title: Text(suggestion),
    //       );
    //     },
    //
    //     onSelected: (suggestion) {
    //       setState(() {
    //         selectedCity = suggestion;
    //       });
    //     },
    //   ),
    // );
  }
}









