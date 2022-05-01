import 'package:flutter/material.dart';
import 'package:skyrider/constants.dart';
// - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
// Place AppBarFb1 inside the app bar property of a Scaffold
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

class GradientAppBarFb1 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  GradientAppBarFb1({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xffd4d4d4);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return AppBar(
      title: Text("מפת מוצבים", textDirection: TextDirection.rtl, style: TextStyle(color: kPrimaryLightColor)),
      backgroundColor: kTopColor,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kTopColor,
              secondaryColor
            ],
            stops: [
              0.5,
              1.0
            ],
          ),
        ),
      ),
    );
  }
}
