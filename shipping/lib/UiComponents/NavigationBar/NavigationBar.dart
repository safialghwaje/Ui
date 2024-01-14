import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mansat/Providers/NavigationBar.dart';
import 'package:provider/provider.dart';



class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBar createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigationBarWidget> {


  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Consumer<NavigationBarProvider>(
        builder: (context, navigationBarProvider, child) {
          return  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Color(0xFF13033A),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.009),
                child: GNav(
                  rippleColor: Color(0xFF6729FF)!,
                  hoverColor: Color(0xFF6729FF)!,
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: height*0.025,
                  padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical:  height*0.01),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Color(0xFF6729FF)!,
                  color: Colors.white,
                  tabs: [
                    GButton(
                      icon: navigationBarProvider.NavigationBaricons[0],
                      text: navigationBarProvider.NavigationBarTexe[0],
                    ),
                    GButton(
                      icon: navigationBarProvider.NavigationBaricons[1],
                      text: navigationBarProvider.NavigationBarTexe[1],
                    ),
                    GButton(
                      icon: navigationBarProvider.NavigationBaricons[2],
                      text: navigationBarProvider.NavigationBarTexe[2],
                    ),
                    GButton(
                      icon: navigationBarProvider.NavigationBaricons[3],
                      text:  navigationBarProvider.NavigationBarTexe[3],
                    ),
                  ],
                  selectedIndex: navigationBarProvider.pageController.initialPage,
                  onTabChange: (index) {
                    setState(() {

                        navigationBarProvider.changeScreen(index);
                      //
                    }
                    );
                  },
                ),
              ),
            ),
          ); }
    );


  }
}