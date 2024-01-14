import 'package:flutter/material.dart';
import 'package:mansat/Screens/Shipments/AddShipment/AddShipment.dart';
import 'package:mansat/Screens/Shipments/CalculateShipping/CalculateShipping.dart';
import 'package:mansat/Screens/Shipments/Search/Search.dart';
import 'package:provider/provider.dart';




class ShipmentsProvider extends ChangeNotifier {
  List<Widget> NavigationBarScreen = [
    AddShipmentWidget(),
    SearchWidget(),
    CalculateShipping(),
  ];
  PageController pageController = PageController(initialPage: 0);


  void changeScreen(int _indx) {
    pageController.jumpToPage(_indx);
    pageController = PageController(initialPage: _indx);
    notifyListeners();
  }

  void changeNavigationBarScreens(List<Widget> _navigationBarScreen) {
    NavigationBarScreen = _navigationBarScreen;
    notifyListeners();
  }

  ShipmentsProvider appProvider(BuildContext context) {
    return Provider.of<ShipmentsProvider>(context, listen: true);
  }
}