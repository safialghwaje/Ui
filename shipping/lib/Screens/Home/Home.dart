import 'package:flutter/material.dart';
import 'Finance.dart';
import 'Search.dart';
import 'Shipments.dart';
import 'StatisticsShipments.dart';

import 'Capture.dart';




class HomeWidget extends StatefulWidget {
  @override
  _HomeWidget createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
      children: [
        StatisticsShipments(),
        Search(),
        Shipments(),
        Capture(),
        Finance(),
      ],
      ),
    );
  }
}