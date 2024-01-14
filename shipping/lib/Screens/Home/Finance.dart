
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/Menus/ServiceMenu/ServiceMenu.dart';

import 'package:mansat/UiComponents/Menus/ServiceMenu/model.dart';



class Finance extends StatefulWidget {
  @override
  _Finance createState() => _Finance();
}

class _Finance extends State<Finance> {

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
    List<ServiceMenuModel> itmes = [
      ServiceMenuModel(
        icon: Icons.calculate_outlined,
        title: 'قيد التسويه',
        description: 'شحناتك التي تحت التسويه', myFunction: () {  },
      ),
      ServiceMenuModel(
        icon: Icons.real_estate_agent_outlined,
        title: 'تسويه ماليه',
        description: 'تسويه ماليه جديده',
        myFunction: () {  },
      ),
      ServiceMenuModel(
        icon: Icons.receipt_long_rounded,
        title: 'كشف حساب',
        description: 'كشف حساب تفصيلي',
        myFunction: () {  },
      ),

      // يمكنك إضافة المزيد من العناصر كما تحتاج
    ];
    return Center(
      child:ServiceMenu(items: itmes, tital: "التفاصيل الماليه",),
    );
  }
}

