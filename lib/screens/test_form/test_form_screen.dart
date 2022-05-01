import 'package:flutter/material.dart';
import 'package:skyrider/enum.dart';
import 'components/body.dart';
import 'package:skyrider/components/norm_app_bar.dart';

class TestFormScreen extends StatelessWidget {
  static String routeName = "/test_form";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBarFb2(),
      body: Body(),
    );
  }
}
