import 'package:flutter/material.dart';
import 'package:skyrider/enum.dart';
import 'components/body.dart';
import 'package:skyrider/components/norm_app_bar.dart';

class FlightScreen extends StatelessWidget {
  static String routeName = "/flight";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarFb2(),
      body: Body(),
    );
  }
}
