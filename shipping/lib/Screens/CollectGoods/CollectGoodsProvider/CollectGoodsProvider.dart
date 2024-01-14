import 'package:flutter/material.dart';
import 'package:mansat/Screens/CollectGoods/RequestToCollectGoods/RequestToCollectGoods.dart';
import 'package:provider/provider.dart';




class CollectGoodsProvider extends ChangeNotifier {
  List<Widget> NavigationBarScreen = [
    RequestToCollectGoods(),
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

  CollectGoodsProvider appProvider(BuildContext context) {
    return Provider.of<CollectGoodsProvider>(context, listen: true);
  }
}