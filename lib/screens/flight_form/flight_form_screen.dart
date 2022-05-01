import 'package:flutter/material.dart';
import 'package:skyrider/enum.dart';
import 'components/body.dart';
import 'package:skyrider/components/norm_app_bar.dart';
import '../../../constants.dart';

class FlightFormScreen extends StatelessWidget {
  static String routeName = "/flight_form";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarFlightAddition(),
      body: FlightFormState(),
    );
  }
}

class AppBarFlightAddition extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarFlightAddition({Key? key})
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
