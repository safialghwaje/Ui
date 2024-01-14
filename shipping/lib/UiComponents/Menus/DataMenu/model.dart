import 'package:flutter/cupertino.dart';

class DataMenuModel {
  final String number;
  final String StartingPlace;
  final String PlaceOfArrival;
  final String state;
  final Color stateColor;
  final String year;
  final String day;
  final String Month;

  DataMenuModel({
    required this.number,
    required this.StartingPlace,
    required this.PlaceOfArrival,
    required this.state,
    required this.stateColor,
    required this.day,
    required this.Month,
    required this.year,
  });
}