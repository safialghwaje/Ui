import 'package:flutter/cupertino.dart';

class ServiceMenuModel {
  final IconData icon;
  final String title;
  final String description;
  final  Function() myFunction;

  ServiceMenuModel( {
    required this.myFunction,
    required this.icon,
    required this.title,
    required this.description,
  });
}