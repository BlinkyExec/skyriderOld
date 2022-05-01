import 'package:flutter/material.dart';
import 'package:skyrider/components/custom_bottom_nav.dart';
import 'package:skyrider/enum.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBarFb3(),
    );
  }
}
