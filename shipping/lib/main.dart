import 'package:flutter/material.dart';
import 'package:mansat/AppBarWidget/AppBarWidget.dart';
import 'package:mansat/Screens/Shipments/ShipmentsProvider/ShipmentsProvider.dart';
import 'package:provider/provider.dart';
import 'Providers/NavigationBar.dart';
import 'Screens/Home/Home.dart';

import 'UiComponents/NavigationBar/NavigationBar.dart';






void main() => runApp(
  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationBarProvider()),
        ChangeNotifierProvider(create: (context) => ShipmentsProvider()),

        // يمكنك إضافة المزيد من المزودات الأخرى هنا إذا لزم الأمر.
      ],
      child: MaterialApp(
          builder: (context, child) {
            return Directionality(textDirection: TextDirection.rtl, child: child!);
          },

          home: Example())

  ),


    );

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBarWidget(),
      body: Consumer<NavigationBarProvider>(
          builder: (context, navigationBarProvider, child) {
            return  PageView(
              controller: navigationBarProvider.pageController,
              children: navigationBarProvider.NavigationBarScreen,
              onPageChanged: (int index) {
                navigationBarProvider.changeScreen(index);
              },
            ); }
      ),


      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}