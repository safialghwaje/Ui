import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mansat/Screens/CollectGoods/CollectGoods.dart';
import 'package:mansat/Screens/CollectGoods/RequestToCollectGoods/RequestToCollectGoods.dart';
import 'package:mansat/Screens/Home/Home.dart';

import 'package:mansat/Screens/Shipments/Search/Search.dart';
import 'package:mansat/Screens/Shipments/Shipments.dart';
import 'package:provider/provider.dart';



class NavigationBarProvider extends ChangeNotifier {
   List<Widget> NavigationBarScreen = [HomeWidget(),ShipmentsWidget(), CollectGoodsWidget(),Container()];
   List<IconData > NavigationBaricons = [Icons.home ,LineIcons.truck,LineIcons.box,LineIcons.dollarSign];
   List<String > NavigationBarTexe = ["الرئيسية" ,"شحناتك"," طلبات الألتقاط","ماليه"];
   PageController pageController = PageController(initialPage: 0);


  void changeScreen(int _indx) {
    pageController.jumpToPage(_indx);
    pageController = PageController(initialPage: _indx);
    notifyListeners();

  }
  void changeNavigationBarScreens(List<Widget> _navigationBarScreen) {
    NavigationBarScreen=_navigationBarScreen;
    notifyListeners();

  }
   void changeNavigationBaricons(List<IconData> _NavigationBaricons) {
     NavigationBaricons=_NavigationBaricons;
     notifyListeners();

   }
   void changeNavigationBarTexe(List<String> _NavigationBarTexe) {
     NavigationBarTexe=_NavigationBarTexe;
     notifyListeners();

   }
}
NavigationBarProvider appProvider(BuildContext context) {
  return Provider.of<NavigationBarProvider>(context, listen: true);
}
