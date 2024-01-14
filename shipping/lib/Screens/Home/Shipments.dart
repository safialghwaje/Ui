
import 'package:flutter/material.dart';
import 'package:mansat/Providers/NavigationBar.dart';
import 'package:mansat/Screens/Shipments/ShipmentsProvider/ShipmentsProvider.dart';

import 'package:mansat/UiComponents/Menus/ServiceMenu/ServiceMenu.dart';
import 'package:mansat/UiComponents/Menus/ServiceMenu/model.dart';
import 'package:provider/provider.dart';




class Shipments extends StatefulWidget {
  @override
  _Shipments createState() => _Shipments();
}

class _Shipments extends State<Shipments> {

  @override
  Widget build(BuildContext context) {
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context, listen: false);
    final shipmentsProvider = Provider.of<ShipmentsProvider>(context, listen: false);
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
        icon: Icons.add,
        title: 'إظافة',
        description: 'إظافة شحنة جديدة',
        myFunction: () {

          navigationBarProvider.changeScreen(1);

        },
      ),
      ServiceMenuModel(
        icon: Icons.search,
        title: 'بـحث',
        description: 'بحث وفلتره دقيقه',
        myFunction: () {
          shipmentsProvider.pageController = PageController(initialPage: 1);
          navigationBarProvider.changeScreen(1);
        },
      ),
      ServiceMenuModel(
        icon: Icons.qr_code,
        title: 'تتبع شحنه',
        description: 'تتبع شحنه عن طريق المسح',
        myFunction: () {  },
      ),
      ServiceMenuModel(
        icon: Icons.calculate_outlined,
        title: 'حساب المصاريف',
        description: 'حساب مصاريف الشحن',
        myFunction: () {
          shipmentsProvider.pageController = PageController(initialPage: 2);
          navigationBarProvider.changeScreen(1);

          },
      ),
      // يمكنك إضافة المزيد من العناصر كما تحتاج
    ];
    return Center(
      child:ServiceMenu(items: itmes, tital: "الـشحـنـات",),
    );
  }
}

