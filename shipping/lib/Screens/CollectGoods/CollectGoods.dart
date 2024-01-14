import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/Screens/CollectGoods/CollectGoodsProvider/CollectGoodsProvider.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/DescriptionBox.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';
import 'package:provider/provider.dart';










class CollectGoodsWidget extends StatefulWidget {
  @override
  _CollectGoodsWidget createState() => _CollectGoodsWidget();
}

class _CollectGoodsWidget extends State<CollectGoodsWidget> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {


    return     ChangeNotifierProvider(
        create: (_) => CollectGoodsProvider(),
        child:
        MaterialApp(
          builder: (context, child) {
            return Directionality(textDirection: TextDirection.rtl, child: child!);
          },

          home: Scaffold(
            body: Consumer<CollectGoodsProvider>(
                builder: (context, collectGoodsProvider, child) {
                  return  PageView(
                    controller: collectGoodsProvider.pageController,
                    children: collectGoodsProvider.NavigationBarScreen,
                    onPageChanged: (int index) {
                      collectGoodsProvider.changeScreen(index);
                    },
                  ); }
            ),
          ),

        )

    );
  }
}