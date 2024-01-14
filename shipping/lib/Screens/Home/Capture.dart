
import 'package:flutter/material.dart';
import 'package:mansat/Providers/NavigationBar.dart';
import 'package:mansat/Screens/CollectGoods/CollectGoodsProvider/CollectGoodsProvider.dart';

import 'package:mansat/UiComponents/Menus/ServiceMenu/ServiceMenu.dart';

import 'package:mansat/UiComponents/Menus/ServiceMenu/model.dart';
import 'package:provider/provider.dart';



class Capture extends StatefulWidget {
  @override
  _Capture createState() => _Capture();
}

class _Capture extends State<Capture> {

  @override
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context, listen: false);
  // final collectGoodsProvider = Provider.of<CollectGoodsProvider>(context, listen: false);
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
        title: 'طلب جديد',
        description: 'طلب لتسليم الشحنات',
        myFunction: () {
        //  collectGoodsProvider.pageController = PageController(initialPage: 0);
          navigationBarProvider.changeScreen(2);
         print("object");
        },
      ),
      ServiceMenuModel(
        icon: Icons.search,
        title: 'بـحث',
        description: 'بحث عن طلبات التقاط سابقه',
        myFunction: () {  },
      ),

      // يمكنك إضافة المزيد من العناصر كما تحتاج
    ];
    return Center(
      child:ServiceMenu(items: itmes, tital: "طلبات الإلتقاط",),
    );
  }
}