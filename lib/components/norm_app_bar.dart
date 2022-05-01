import 'package:flutter/material.dart';
import 'package:skyrider/screens/flight_form/flight_form_screen.dart';
import 'package:skyrider/screens/test_form/test_form_screen.dart';
import '../../../constants.dart';

// - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
// Place AppBarFb1 inside the app bar property of a Scaffold
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

class AppBarFb2 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarFb2({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return AppBar(
      title: const Text("דיווח טיסה", textDirection: TextDirection.rtl, style: TextStyle(color: kPrimaryLightColor)),
      backgroundColor: kTopColor,
      actions: [
        IconButton(
          icon: Icon(
            Icons.add_box_outlined,
            color: kPrimaryLightColor,
          ),
          onPressed: () => Navigator.pushNamed(context, FlightFormScreen.routeName),
        )
      ],
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_arrow_left,
          color: kPrimaryLightColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
