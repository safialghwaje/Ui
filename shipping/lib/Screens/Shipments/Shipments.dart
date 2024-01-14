import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mansat/UiComponents/ChooseBetweenTwoOptions/ChooseBetweenTwoOptions.dart';
import 'package:mansat/UiComponents/Dropdown/Dropdown.dart';
import 'package:mansat/UiComponents/TextBotton/button.dart';
import 'package:mansat/UiComponents/TextFields/DescriptionBox.dart';
import 'package:mansat/UiComponents/TextFields/TextField.dart';
import 'package:provider/provider.dart';

import 'ShipmentsProvider/ShipmentsProvider.dart';








class ShipmentsWidget extends StatefulWidget {
  @override
  _ShipmentsWidget createState() => _ShipmentsWidget();
}

class _ShipmentsWidget extends State<ShipmentsWidget> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: Consumer<ShipmentsProvider>(
          builder: (context, shipmentsProvider, child) {
            return  PageView(
              controller: shipmentsProvider.pageController,
              children: shipmentsProvider.NavigationBarScreen,
              onPageChanged: (int index) {
                shipmentsProvider.changeScreen(index);
              },
            ); }
      ),
    );
  }
}