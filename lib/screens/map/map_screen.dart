import 'package:flutter/material.dart';
import 'package:skyrider/components/custom_bottom_nav.dart';
import 'package:skyrider/components/gradient_app_bar.dart';
import 'package:skyrider/enum.dart';

import 'components/body.dart';

class MapPage extends StatelessWidget {
  static String routeName = "/map";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBarFb1(),
      body: MapScreen(),
      bottomNavigationBar: BottomNavBarFb3(),
    );
  }
}
